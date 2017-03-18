FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  build-essential \
  gcc \
  g++ \
  make \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /sample_for_jenkins_build_pipeline
COPY ./ /sample_for_jenkins_build_pipeline/

RUN cd /sample_for_jenkins_build_pipeline && \
    make clean && \
    make 

CMD ["bash"]
