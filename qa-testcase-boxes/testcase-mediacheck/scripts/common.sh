# shellcheck disable=SC2034

#set -x
set -e

full_path="$(realpath "$0")"
dir_path="$(dirname "$full_path")"
parent_path="$(dirname "$dir_path")"

# shellcheck disable=1091
. /etc/os-release

log_msg() {
    printf '\n' | tee -a "$2"
    printf '=%.0s' {1..80} | tee -a "$2"
    printf '\n%b\n\n' "$1" | tee -a "$2"
}

# Defaults
iso_version="${VERSION_ID}"
iso_arch="$(arch)"
iso_type="boot"
iso_mirror_base="http://dl.rockylinux.org/pub/rocky/${iso_version}/isos"
iso_prefix="Rocky"
iso_checksum_name="CHECKSUM"
iso_checksum_sig=".sig"
iso_key_name="RPM-GPG-KEY-rockyofficial"
iso_key_url="https://dl.rockylinux.org/pub/rocky/RPM-GPG-KEY-rockyofficial"
log_dir="${parent_path}/output/$(date +%Y-%m-%d)"

