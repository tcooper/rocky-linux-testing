# container testing

The script in this directory can be use to test Rocky Linux containers with
systemd-nspawn on the target architecture (where supported).

## Requirements

- sudo access on test system
- systemd-container installed


## Test Matrix

TODO


## Sample Host

```
$ arch
aarch64

$ cat /etc/rocky-release
Rocky Linux release 8.7 (Green Obsidian)
```

## Sample Output

```
$ ./container-test.sh
======================================================================
  Testing Container: Rocky-8-Container-Base.latest.aarch64.tar.xz
======================================================================
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 41.2M  100 41.2M    0     0  89.5M      0 --:--:-- --:--:-- --:--:-- 89.5M
Spawning container rocky8u7 on /home/rocky/container/rocky8u7.
Press ^] three times within 1s to kill container.
NAME="Rocky Linux"
VERSION="8.7 (Green Obsidian)"
Container rocky8u7 exited successfully.
Spawning container rocky8u7 on /home/rocky/container/rocky8u7.
Press ^] three times within 1s to kill container.
Container rocky8u7 exited successfully.
acl				audit-libs			basesystem			bash
binutils			bzip2-libs			ca-certificates			chkconfig
coreutils-single		cracklib			cracklib-dicts			crypto-policies
cryptsetup-libs			curl				cyrus-sasl-lib			dbus
dbus-common			dbus-daemon			dbus-libs			dbus-tools
device-mapper			device-mapper-libs		dnf				dnf-data
elfutils-default-yama-scope	elfutils-libelf			elfutils-libs			expat
file-libs			filesystem			gawk				gdbm
gdbm-libs			glib2				glibc				glibc-common
glibc-minimal-langpack		gmp				gnupg2				gnutls
gpgme				grep				gzip				hostname
ima-evm-utils			info				iputils				json-c
keyutils-libs			kmod-libs			krb5-libs			langpacks-en
less				libacl				libarchive			libassuan
libattr				libblkid			libcap				libcap-ng
libcom_err			libcomps			libcurl-minimal			libdb
libdb-utils			libdnf				libfdisk			libffi
libgcc				libgcrypt			libgpg-error			libidn2
libksba				libmodulemd			libmount			libnghttp2
libnsl2				libpwquality			librepo				libreport-filesystem
libseccomp			libselinux			libsemanage			libsepol
libsigsegv			libsmartcols			libsolv				libstdc++
libtasn1			libtirpc			libunistring			libusbx
libutempter			libuuid				libverto			libxcrypt
libxml2				libyaml				libzstd				lua-libs
lz4-libs			mpfr				ncurses-base			ncurses-libs
nettle				npth				openldap			openssl-libs
p11-kit				p11-kit-trust			pam				pcre
pcre2				platform-python			platform-python-setuptools	popt
python3-dnf			python3-gpg			python3-hawkey			python3-libcomps
python3-libdnf			python3-libs			python3-pip-wheel		python3-rpm
python3-setuptools-wheel	readline			rocky-gpg-keys			rocky-release
rocky-repos			rootfiles			rpm				rpm-build-libs
rpm-libs			sed				setup				shadow-utils
sqlite-libs			systemd				systemd-libs			systemd-pam
tar				tpm2-tss			tzdata				util-linux
vim-minimal			xz-libs				yum				zlib
======================================================================
  Testing Container: Rocky-8-Container-Minimal.latest.aarch64.tar.xz
======================================================================
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 28.6M  100 28.6M    0     0  69.0M      0 --:--:-- --:--:-- --:--:-- 69.0M
Spawning container rocky8u7 on /home/rocky/container/rocky8u7.
Press ^] three times within 1s to kill container.
NAME="Rocky Linux"
VERSION="8.7 (Green Obsidian)"
Container rocky8u7 exited successfully.
Spawning container rocky8u7 on /home/rocky/container/rocky8u7.
Press ^] three times within 1s to kill container.
Container rocky8u7 exited successfully.
acl				audit-libs			basesystem			bash
bzip2-libs			ca-certificates			chkconfig			coreutils-single
cracklib			cracklib-dicts			crypto-policies			cryptsetup-libs
curl				cyrus-sasl-lib			dbus				dbus-common
dbus-daemon			dbus-libs			dbus-tools			device-mapper
device-mapper-libs		elfutils-default-yama-scope	elfutils-libelf			elfutils-libs
expat				file-libs			filesystem			gawk
glib2				glibc				glibc-common			glibc-minimal-langpack
gmp				gnupg2				gnutls				gobject-introspection
gpgme				grep				gzip				info
json-c				keyutils-libs			kmod-libs			krb5-libs
langpacks-en			libacl				libarchive			libassuan
libattr				libblkid			libcap				libcap-ng
libcom_err			libcurl-minimal			libdb				libdb-utils
libdnf				libfdisk			libffi				libgcc
libgcrypt			libgpg-error			libidn2				libksba
libmodulemd			libmount			libnghttp2			libnsl2
libpeas				libpwquality			librepo				libseccomp
libselinux			libsemanage			libsepol			libsigsegv
libsmartcols			libsolv				libstdc++			libtasn1
libtirpc			libunistring			libusbx				libutempter
libuuid				libverto			libxcrypt			libxml2
libyaml				libzstd				lua-libs			lz4-libs
microdnf			mpfr				ncurses-base			ncurses-libs
nettle				npth				openldap			openssl-libs
p11-kit				p11-kit-trust			pam				pcre
pcre2				popt				readline			rocky-gpg-keys
rocky-release			rocky-repos			rpm				rpm-libs
sed				setup				shadow-utils			sqlite-libs
systemd				systemd-libs			systemd-pam			tzdata
util-linux			xz-libs				zlib
======================================================================
  Testing Container: Rocky-8-Container-UBI.latest.aarch64.tar.xz
======================================================================
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 42.5M  100 42.5M    0     0  92.5M      0 --:--:-- --:--:-- --:--:-- 92.5M
Spawning container rocky8u7 on /home/rocky/container/rocky8u7.
Press ^] three times within 1s to kill container.
NAME="Rocky Linux"
VERSION="8.7 (Green Obsidian)"
Container rocky8u7 exited successfully.
Spawning container rocky8u7 on /home/rocky/container/rocky8u7.
Press ^] three times within 1s to kill container.
Container rocky8u7 exited successfully.
acl				audit-libs			basesystem			bash
binutils			brotli				bzip2-libs			ca-certificates
chkconfig			coreutils-single		cracklib			cracklib-dicts
crypto-policies			crypto-policies-scripts		cryptsetup-libs			curl
cyrus-sasl-lib			dbus				dbus-common			dbus-daemon
dbus-libs			dbus-tools			device-mapper			device-mapper-libs
dmidecode			dnf				dnf-data			elfutils-default-yama-scope
elfutils-libelf			elfutils-libs			expat				file-libs
filesystem			findutils			gawk				gdbm
gdbm-libs			glib2				glibc				glibc-common
glibc-minimal-langpack		gmp				gnupg2				gnutls
gpgme				grep				gzip				ima-evm-utils
info				json-c				keyutils-libs			kmod-libs
krb5-libs			langpacks-en			libacl				libarchive
libassuan			libattr				libblkid			libcap
libcap-ng			libcom_err			libcomps			libcurl
libdb				libdb-utils			libdnf				libfdisk
libffi				libgcc				libgcrypt			libgpg-error
libidn2				libksba				libmodulemd			libmount
libnghttp2			libnsl2				libpsl				libpwquality
librepo				libreport-filesystem		libseccomp			libselinux
libsemanage			libsepol			libsigsegv			libsmartcols
libsolv				libssh				libssh-config			libstdc++
libtasn1			libtirpc			libunistring			libusbx
libutempter			libuuid				libverto			libxcrypt
libxml2				libyaml				libzstd				lua-libs
lz4-libs			mpfr				ncurses-base			ncurses-libs
nettle				npth				openldap			openssl-libs
p11-kit				p11-kit-trust			pam				pcre
pcre2				platform-python			platform-python-setuptools	popt
publicsuffix-list-dafsa		python3-dnf			python3-gpg			python3-hawkey
python3-libcomps		python3-libdnf			python3-libs			python3-pip-wheel
python3-rpm			python3-setuptools-wheel	readline			rocky-gpg-keys
rocky-release			rocky-repos			rootfiles			rpm
rpm-build-libs			rpm-libs			sed				setup
shadow-utils			sqlite-libs			systemd				systemd-libs
systemd-pam			tar				tpm2-tss			tzdata
util-linux			vim-minimal			which				xz-libs
yum				zlib
======================================================================
  Testing Container: Rocky-9-Container-Base.latest.aarch64.tar.xz
======================================================================
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 35.1M  100 35.1M    0     0  81.0M      0 --:--:-- --:--:-- --:--:-- 81.0M
Spawning container rocky9u1 on /home/rocky/container/rocky9u1.
Press ^] three times within 1s to kill container.
NAME="Rocky Linux"
VERSION="9.1 (Blue Onyx)"
Container rocky9u1 exited successfully.
Spawning container rocky9u1 on /home/rocky/container/rocky9u1.
Press ^] three times within 1s to kill container.
Container rocky9u1 exited successfully.
alternatives			audit-libs			basesystem			bash
binutils			binutils-gold			bzip2-libs			ca-certificates
coreutils-single		crypto-policies			curl				cyrus-sasl-lib
dejavu-sans-fonts		dnf				dnf-data			elfutils-debuginfod-client
elfutils-default-yama-scope	elfutils-libelf			elfutils-libs			expat
file-libs			filesystem			fonts-filesystem		gawk
gdbm-libs			glib2				glibc				glibc-common
glibc-minimal-langpack		gmp				gnupg2				gnutls
gpgme				grep				hostname			ima-evm-utils
iputils				json-c				keyutils-libs			krb5-libs
langpacks-core-en		langpacks-core-font-en		langpacks-en			less
libacl				libarchive			libassuan			libattr
libblkid			libbrotli			libcap				libcap-ng
libcom_err			libcomps			libcurl				libdnf
libevent			libffi				libgcc				libgcrypt
libgomp				libgpg-error			libidn2				libksba
libmodulemd			libmount			libnghttp2			libpsl
librepo				libreport-filesystem		libselinux			libsemanage
libsepol			libsigsegv			libsmartcols			libsolv
libssh				libssh-config			libstdc++			libtasn1
libunistring			libuuid				libverto			libxcrypt
libxml2				libyaml				libzstd				lua-libs
lz4-libs			mpfr				ncurses-base			ncurses-libs
nettle				npth				openldap			openssl-libs
p11-kit				p11-kit-trust			pcre				pcre2
pcre2-syntax			popt				publicsuffix-list-dafsa		python3
python3-dnf			python3-gpg			python3-hawkey			python3-libcomps
python3-libdnf			python3-libs			python3-pip-wheel		python3-rpm
python3-setuptools-wheel	readline			rocky-gpg-keys			rocky-release
rocky-repos			rootfiles			rpm				rpm-build-libs
rpm-libs			rpm-sign-libs			sed				setup
shadow-utils			sqlite-libs			tar				tpm2-tss
tzdata				vim-minimal			xz-libs				yum
zlib
======================================================================
  Testing Container: Rocky-9-Container-Minimal.latest.aarch64.tar.xz
======================================================================
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 21.7M  100 21.7M    0     0  56.9M      0 --:--:-- --:--:-- --:--:-- 56.7M
Spawning container rocky9u1 on /home/rocky/container/rocky9u1.
Press ^] three times within 1s to kill container.
NAME="Rocky Linux"
VERSION="9.1 (Blue Onyx)"
Container rocky9u1 exited successfully.
Spawning container rocky9u1 on /home/rocky/container/rocky9u1.
Press ^] three times within 1s to kill container.
Container rocky9u1 exited successfully.
alternatives		audit-libs		basesystem		bash			bzip2-libs
ca-certificates		coreutils-single	crypto-policies		curl			cyrus-sasl-lib
dejavu-sans-fonts	dnf-data		file-libs		filesystem		fonts-filesystem
gawk			gdbm-libs		glib2			glibc			glibc-common
glibc-minimal-langpack	gmp			gnupg2			gnutls			gobject-introspection
gpgme			grep			json-c			keyutils-libs		krb5-libs
langpacks-core-en	langpacks-core-font-en	langpacks-en		libacl			libarchive
libassuan		libattr			libblkid		libbrotli		libcap
libcap-ng		libcom_err		libcurl			libdnf			libevent
libffi			libgcc			libgcrypt		libgpg-error		libidn2
libksba			libmodulemd		libmount		libnghttp2		libpeas
libpsl			librepo			libreport-filesystem	libselinux		libsepol
libsigsegv		libsmartcols		libsolv			libssh			libssh-config
libstdc++		libtasn1		libunistring		libuuid			libverto
libxcrypt		libxml2			libyaml			libzstd			lua-libs
lz4-libs		microdnf		mpfr			ncurses-base		ncurses-libs
nettle			npth			openldap		openssl-libs		p11-kit
p11-kit-trust		pcre			pcre2			pcre2-syntax		popt
publicsuffix-list-dafsa	readline		rocky-gpg-keys		rocky-release		rocky-repos
rpm			rpm-libs		sed			setup			sqlite-libs
tzdata			xz-libs			zlib
======================================================================
  Testing Container: Rocky-9-Container-UBI.latest.aarch64.tar.xz
======================================================================
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 45.0M  100 45.0M    0     0   104M      0 --:--:-- --:--:-- --:--:--  104M
Spawning container rocky9u1 on /home/rocky/container/rocky9u1.
Press ^] three times within 1s to kill container.
NAME="Rocky Linux"
VERSION="9.1 (Blue Onyx)"
Container rocky9u1 exited successfully.
Spawning container rocky9u1 on /home/rocky/container/rocky9u1.
Press ^] three times within 1s to kill container.
Container rocky9u1 exited successfully.
acl				alternatives			audit-libs			basesystem
bash				binutils			binutils-gold			brotli
bzip2-libs			ca-certificates			coreutils-single		cracklib
cracklib-dicts			crypto-policies			crypto-policies-scripts		cryptsetup-libs
curl				cyrus-sasl-lib			dbus				dbus-broker
dbus-common			dejavu-sans-fonts		device-mapper			device-mapper-libs
dmidecode			dnf				dnf-data			elfutils-debuginfod-client
elfutils-default-yama-scope	elfutils-libelf			elfutils-libs			expat
file-libs			filesystem			findutils			fonts-filesystem
gawk				gdbm-libs			glib2				glibc
glibc-common			glibc-minimal-langpack		gmp				gnupg2
gnutls				gpgme				grep				gzip
ima-evm-utils			json-c				keyutils-libs			kmod-libs
krb5-libs			langpacks-core-en		langpacks-core-font-en		langpacks-en
libacl				libarchive			libassuan			libattr
libblkid			libbrotli			libcap				libcap-ng
libcom_err			libcomps			libcurl				libdb
libdnf				libeconf			libevent			libfdisk
libffi				libgcc				libgcrypt			libgomp
libgpg-error			libidn2				libksba				libmodulemd
libmount			libnghttp2			libpsl				libpwquality
librepo				libreport-filesystem		libseccomp			libselinux
libsemanage			libsepol			libsigsegv			libsmartcols
libsolv				libssh				libssh-config			libstdc++
libtasn1			libunistring			libutempter			libuuid
libverto			libxcrypt			libxml2				libyaml
libzstd				lua-libs			lz4-libs			mpfr
ncurses-base			ncurses-libs			nettle				npth
openldap			openssl				openssl-libs			p11-kit
p11-kit-trust			pam				pcre				pcre2
pcre2-syntax			popt				publicsuffix-list-dafsa		python3
python3-dnf			python3-gpg			python3-hawkey			python3-libcomps
python3-libdnf			python3-libs			python3-pip-wheel		python3-rpm
python3-setuptools-wheel	readline			rocky-gpg-keys			rocky-release
rocky-repos			rootfiles			rpm				rpm-build-libs
rpm-libs			rpm-sign-libs			sed				setup
shadow-utils			sqlite-libs			systemd				systemd-libs
systemd-pam			systemd-rpm-macros		tar				tpm2-tss
tzdata				util-linux			util-linux-core			vim-minimal
which				xz-libs				yum				zlib
```
