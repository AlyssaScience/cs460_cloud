FROM gitpod/workspace-full:latest

USER gitpod

RUN pip install --no-cache-dir \
    flask \
    jupyter
