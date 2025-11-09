#!/usr/bin/env bash

# Copyright (c) 2022 Rocky Enterprise Software Foundation
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice (including the next
# paragraph) shall be included in all copies or substantial portions of the
# Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# Author: Trevor Cooper <tcooper@rockylinux.org>
#

full_path="$(realpath "$0")"
dir_path="$(dirname "$full_path")"
parent_path="$(dirname "$dir_path")"

source "${dir_path}/common_opts.sh"

iso_url="${iso_mirror_base}/${iso_version}/isos/${iso_arch}/${iso_prefix}-${iso_version}-${iso_arch}-${iso_type}.iso"
iso_name=$(basename "${iso_url}")

dnf clean all

mkdir -pv "${log_dir}"
log_base="${log_dir}/${iso_name}"

if [[ "${iso_type}" == *"boot"* ]]
then
  # Do something to verify contents of boot ISOs?
  true
else
  # For minimal and dvd ISOs there is/are repos inside the media
  sudo mount -o loop,ro "${iso_name}" /media

  #repodata_dirs=($(find /media -name repodata))
  mapfile -t repodata_dirs < <(find /media -name repodata)

  if [[ "${repodata_dirs[*]}" =~ "repodata" ]]
  then
    rc_cmd="dnf --verbose repoclosure"
    pc_cmd="python3 ${dir_path}/potential_conflict.py"
    for rd in "${repodata_dirs[@]}"
    do
      dn=$(dirname "${rd}")
      rn=$(basename "${dn}")
      rc_cmd="${rc_cmd} --repofrompath ${rn},${dn} --repo ${rn}"
      pc_cmd="${pc_cmd} --repofrompath ${rn},${dn} --repoid ${rn}"
    done

    # dnf repoclosure will/should expose any issues with the repository metadata
    truncate -s0 "${log_base}.repoclosure.out"
    log_msg "Running:\n\t${rc_cmd} ..." "${log_base}.repoclosure.out"
    bash -c "${rc_cmd}" 2>&1 | tee -a "${log_base}.repoclosure.out"

    # potential_conflict.py should uncover any packages with package or unanticipated file conflicts
    truncate -s0 "${log_base}.package_file_conflicts.out"
    log_msg "Running:\n\t${pc_cmd} ..." "${log_base}.package_file_conflicts.out"
    bash -c "${pc_cmd}" 2>&1 | tee "${log_base}.package_file_conflicts.out"

  fi

  sudo umount /media
fi
