FROM jupyter/datascience-notebook:latest
MAINTAINER Harrison Totty <harrisongtotty@gmail.com>

# Run commands that require root.
USER root
RUN apt-get update && apt-get -y install \
    nodejs

# Switch back to jovyan user
USER jovyan

# Install plotly & components.
RUN pip install plotly && jupyter labextension install \
    jupyterlab-plotly \
    @jupyter-widgets/jupyterlab-manager \
    plotlywidget

# Install Python LSP extension.
RUN pip install jupyter-lsp python-language-server[all] && \
    jupyter labextension install @krassowski/jupyterlab-lsp

# Install additional extensions.
RUN jupyter labextension install \
    @aquirdturtle/collapsible_headings \
    @ijmbarr/jupyterlab_spellchecker \
    @jupyterlab/toc
