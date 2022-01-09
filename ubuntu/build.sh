#!/bin/sh -eux

for tag in act-latest act-20.04 act-18.04
do
  docker build . --build-arg "FROM_TAG=${tag}" -t "nekketsuuu/ubuntu:${tag}"
done
