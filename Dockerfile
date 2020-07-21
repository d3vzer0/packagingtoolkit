FROM python:3.7-slim

RUN apt-get update && apt-get install -y wget
RUN pip install semantic_version

WORKDIR /opt/packagingtoolkit

# Download splunk packaging toolkit
RUN wget https://download.splunk.com/misc/packaging-toolkit/splunk-packaging-toolkit-1.0.1.tar.gz

# Install appinspect
RUN pip install splunk-packaging-toolkit-1.0.1.tar.gz

ENTRYPOINT ["slim"]
