#!/bin/bash

set -e
#set -x

BASEDIR="${HOME}/container"
CONTAINER_URL_BASE=https://dl.rockylinux.org/pub/rocky

mkdir -p "${BASEDIR}" && cd "${BASEDIR}"

for arch in $(arch);
do
  for version in 8.7 9.1;
  do
    version_major=$(echo "${version}" | cut -d\. -f1)
    version_minor=$(echo "${version}" | cut -d\. -f2)

    for flavor in Base Minimal UBI;
    do
      CONTAINER="Rocky-${version_major}-Container-${flavor}.latest.${arch}.tar.xz"
      echo "======================================================================"
      echo "  Testing Container: ${CONTAINER}"
      echo "======================================================================"
      curl -R -C - -O \
         "${CONTAINER_URL_BASE}/${version}/images/${arch}/${CONTAINER}"
      if [[ -f "./${CONTAINER}" ]];
      then
        workdir="${BASEDIR}/rocky${version_major}u${version_minor}"
        mkdir -p "${workdir}" && cd "${workdir}"
        tar -xJf "${BASEDIR}/${CONTAINER}"

        sudo systemd-nspawn -a -D "${workdir}" awk '/^NAME=|^VERSION=/ {print}' /etc/os-release
        sudo systemd-nspawn -a -D "${workdir}" rpm -qa --queryformat="%{NAME}\n" | sort | column -x

        # todo: full test suite here...

	cd "${BASEDIR}"
        sudo /bin/rm -rf "${workdir}"
      fi

    done
  done
done
