#!/bin/bash
if [[ ! -d ${HOME}/projects ]]; then
  mkdir ${HOME}/projects
fi
if [[ ! -d ${HOME}/languages ]]; then
  mkdir ${HOME}/languages
fi
if [[ ! -d ${HOME}/.local/bin ]]; then
  mkdir -p ${HOME}/.local/bin
fi
if [[ ! -d ${HOME}/pictures ]]; then
  mkdir ${HOME}/pictures
fi

