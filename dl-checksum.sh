#!/usr/bin/env sh

DIR=~/Downloads
MIRROR=https://dl.influxdata.com/influxdb/releases

dl() {
    ver=$1
    os=$2
    arch=$3
    archive_type=$4
    local platform="${os}_${arch}"
    local file=influxdb-${ver}_${platform}.${archive_type}
    local url=$MIRROR/$file
    local lfile=$DIR/$file
    printf "    # %s\n" $url
    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi
    printf "    '%s': sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux amd64 tar.gz
    dl $ver linux i386 tar.gz
    dl $ver linux armhf tar.gz
    dl $ver windows amd64 zip
}

dl_ver ${1:-1.7.9}
