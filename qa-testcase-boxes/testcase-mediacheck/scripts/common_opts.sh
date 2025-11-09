# shellcheck disable=SC2034

#set -x
set -e

full_path="$(realpath "$0")"
dir_path="$(dirname "$full_path")"
parent_path="$(dirname "$dir_path")"

source "${dir_path}/common.sh"

function usage {

  cat <<- "EOF"
    $(basename $0) [optional arguments]

    type:                -t  eg; 'boot', 'minimal', 'dvd', 'dvd1', 'repo', 'koji', 'cache'
    arch:                -a  eg: 'x86_64', 'aarch64', 'ppc64-le' or 's390x'
    iso_version:         -v  eg: '8.6' or '8'
    iso_prefix:          -p  eg: 'Rocky' or 'CentOS-Stream'
    iso_checksum_name:   -c  eg: 'CHECKSUM' or 'SHA256SUM'
    iso_checksum_sig:    -s  eg: '.sig' or '.asc'
    iso_mirror_base:     -b  eg: 'http://dl.rockylinux.org/stg/rocky/8/isos'
    log_dir:             -l  eg: $(pwd)/output/$(date +%Y-%m-%d)
    repo_name:           -r  eg: 'pdot-dev-x86_64'
    koji_tag:            -k  eg: 'dist-rocky8-compose'
EOF
}

optstring="ht:a:v:p:c:s:b:k:l:r:"

while getopts ${optstring} arg; do
  case ${arg} in
    h)
      usage
      exit 0
      ;;
    t)
      iso_type="${OPTARG}"
      ;;
    a)
      iso_arch="${OPTARG}"
      ;;
    v)
      iso_version="${OPTARG}"
      ;;
    p)
      iso_prefix="${OPTARG}"
      ;;
    c)
      iso_checksum_name="${OPTARG}"
      ;;
    s)
      iso_checksum_sig="${OPTARG}"
      ;;
    b)
      iso_mirror_base="${OPTARG}"
      ;;
    k)
      iso_key_name="${OPTARG}"
      ;;
    l)
      log_dir="${OPTARG}"
      ;;
    r)
      repo_name="${OPTARG}"
      ;;
    :)
      echo "$0: Must supply an argument to -$OPTARG." >&2
      exit 1
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      echo
      exit 1
      ;;
  esac
done
