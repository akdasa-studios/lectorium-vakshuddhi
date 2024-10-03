FROM pytorch/pytorch:2.2.0-cuda12.1-cudnn8-devel

# ---------------------------------------------------------------------------- #
#                             Install Dependencies                             #
# ---------------------------------------------------------------------------- #

RUN echo 'Installing dependencies' \
    && apt update \
    && apt install -y ffmpeg git-lfs curl \
    && curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash \
    && pip install resemble-enhance --upgrade
