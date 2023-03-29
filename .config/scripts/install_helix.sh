#!/bin/bash
if [[ ! -d ${HOME}/programs ]]; then
  mkdir ${HOME}/programs
fi
cd ${HOME}/programs
rm -rf helix
git clone https://github.com/helix-editor/helix
cd helix
cargo install --locked --path helix-term