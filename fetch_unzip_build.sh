#!/usr/bin/env bash
set -x
wget https://github.com/hazelnusse/flatbuffers/archive/remove_symlink.zip
unzip remove_symlink.zip
cp WORKSPACE BUILD flatbuffers-remove_symlink
cd flatbuffers-remove_symlink
bazel build -s --verbose_failures --sandbox_debug //:flatc
cd ..
