ARG BASE_CONTAINER=jupyter/scipy-notebook:python-3.10.8
FROM $BASE_CONTAINER

LABEL author="Tamas Spisak"

# Fix: https://github.com/hadolint/hadolint/wiki/DL4006
# Fix: https://github.com/koalaman/shellcheck/wiki/SC3014
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root
RUN apt-get update && \
    apt-get install -y datalad

USER ${NB_UID}
RUN git config --global --add user.name BWASdemo
RUN git config --global --add user.email bwas.user@noaddres.com
RUN pip install joblib mlxtend datalad
RUN mkdir ~/.ssh
RUN ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
RUN mkdir ${HOME}/bwas && mkdir ${HOME}/bwas/hcp_data
COPY --chown=${NB_UID}:${NB_GID} *.ipynb ${HOME}/bwas/
WORKDIR "${HOME}/bwas"
# to start: docker run -it -p 8080:8080 -p 8888:8888 tspisak/bwas:latest jupyter notebook
