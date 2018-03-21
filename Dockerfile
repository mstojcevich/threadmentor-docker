FROM centos:centos7
MAINTAINER mstojcevich@users.noreply.github.com

# Install dev stuff
RUN yum -y group install "Development Tools"

# Install EPEL, necessary for GTK+1.2
RUN yum -y install epel-release && \
    yum -y update && \
    yum -y clean all

# Install GTK+1.2
RUN yum -y install gtk+ && \
    yum -y update && \
    yum -y clean all

# Download ThreadMentor
# (uses the same install directory as the lab machines)
RUN mkdir -p /local/eit-linux/apps/ThreadMentor && \
    curl -SL http://www.cs.mtu.edu/~shene/NSF-3/BETA/ThreadMentor-Linux64.tar.gz \
    | tar -xzC /local/eit-linux/apps/ThreadMentor

# Set PATH (necessary for ThreadMentor visual
env PATH="/local/eit-linux/apps/ThreadMentor/bin:${PATH}"

ADD projects /projects
WORKDIR /projects
