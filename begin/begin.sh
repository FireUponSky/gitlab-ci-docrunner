#!/bin/bash
fc-cache -fv
sudo -u gitlab_ci_runner -H TEXMFSYSCONFIG=/home/gitlab_ci_runner/.texmf-config /usr/local/texlive/bin/x86_64-linux/mktexlsr
/app/init app:start
