#!/bin/sh

set -eux

while [ $# -gt 0 ]; do
	case "$1" in
		build)
			docker build --force-rm -t srbala/podman-in-jenkins .
		;;
		run)
			docker run -ti --rm --privileged srbala/podman-in-jenkins
		;;
	esac
	shift
done
