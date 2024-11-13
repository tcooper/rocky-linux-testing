#!/bin/sh

set -x

./scripts/test_wrapper.sh boot x86_64 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-x86_64-boot.iso.log
./scripts/test_wrapper.sh boot aarch64 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-aarch64-boot.iso.log
./scripts/test_wrapper.sh boot ppc64le 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-ppc64le-boot.iso.log
./scripts/test_wrapper.sh boot s390x 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-s390x.boot-iso.log

./scripts/test_wrapper.sh minimal x86_64 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-x86_64-minimal.iso.log
./scripts/test_wrapper.sh minimal aarch64 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-aarch64-minimal.iso.log
./scripts/test_wrapper.sh minimal ppc64le 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-ppc64le-minimal.iso.log
./scripts/test_wrapper.sh minimal s390x 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-s390x-minimal.iso.log

./scripts/test_wrapper.sh dvd x86_64 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-x86_64-dvd.iso.log
./scripts/test_wrapper.sh dvd aarch64 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-aarch64-dvd.iso.log
./scripts/test_wrapper.sh dvd ppc64le 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-ppc64le-dvd.iso.log
./scripts/test_wrapper.sh dvd s390x 9.1 http://dl.rockylinux.org/stg/rocky/9/isos | tee Rocky-9.1-s390x.dvd-iso.log
