#!/bin/bash

A_COPY='etc/ansible'
A_BASE="/${A_COPY}"

mkdir -p $A_COPY

rsync -av "${A_BASE}/roles" "${A_COPY}/"
rsync -av "${A_BASE}/playbooks" "${A_COPY}/"
