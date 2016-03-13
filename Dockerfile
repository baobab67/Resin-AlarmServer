FROM resin/rpi-raspbian:wheezy-20160309

# Enable systemd
ENV INITSYSTEM on

RUN apt-get update
RUN apt-get install -y sudo python python-pip git-core \
      build-essential wget ca-certificates libssl-dev \
	  --no-install-recommends
RUN pip install requests 

# Attempt to spuress the SSL issues
# RUN pip install pyopenssl ndg-httpsclient pyasn1 cryptography libffi-dev python-dev
ENV PYTHONWARNINGS="ignore:Unverified HTTPS request"

RUN git clone  https://github.com/baobab67/AlarmServer.git
# Make my fork have the smartthings branch be the default

COPY . /AlarmServer

WORKDIR /AlarmServer

# Define default command.
CMD ["python", "/AlarmServer/alarmserver.py"]
#CMD ["ls","AlarmServer"]

# Expose ports.
EXPOSE 8111

