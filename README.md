# CHIPtainer: Alpine

- generate Docker container image "modelb/chiptainer_alpine" based on "nextthingco/chiptainer_alpine" based on alpine armhf mini rootfs
- add custom built [qemu-arm-static v2.7 with patches from resin.io](http://kaplan2539.gitlab.io/baumeister/qemu-arm-static.tar.gz)
- resin patches enable Qemu to run even on Linux kernels w/o the binfmt module
- makes it easy to build ARM Docker container images on x86 systems

# TODO:
- move dependencies to Model B hosted location
- explore source files for dependencies
- make an independent build process

