FROM jupyter/datascience-notebook:latest
MAINTAINER Harrison Totty <harrisongtotty@gmail.com>

# Install plotly & components.
RUN pip install plotly && \
    jupyter labextension install jupyterlab-plotly @jupyter-widgets/jupyterlab-manager plotlywidget
