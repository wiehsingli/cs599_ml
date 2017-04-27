FROM continuumio/anaconda3
RUN /opt/conda/bin/conda install jupyter -y --quiet \ 
  && mkdir /opt/notebooks \
  && pip install \
    keras \
    https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.1.0-cp36-cp36m-linux_x86_64.whl
ADD jupyter_notebooks/ /opt/notebooks
CMD ["jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]