# 使用Ubuntu 22.04作为基础镜像
FROM docker.m.daocloud.io/ubuntu:22.04

# 设置非交互式安装，避免安装过程中的提示
ENV DEBIAN_FRONTEND=noninteractive

# 设置工作目录
WORKDIR /app
# 替换为清华源
RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list && \
  sed -i 's/security.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list && \
  apt-get update

# 更新包列表并安装基础依赖
RUN apt-get install -y \
  curl \
  wget \
  unzip \
  git \
  build-essential 

# 安装Python 3.10+
RUN apt-get install -y python3.11 \
  python3-pip \
  python3.11-dev \
  python3-setuptools \
  openjdk-8-jdk net-tools \
  && ln -sf /usr/bin/python3.11 /usr/bin/python3 \
  && ln -sf /usr/bin/python3.11 /usr/bin/python

RUN pip install -U auto-coder --index-url https://pypi.tuna.tsinghua.edu.cn/simple

# Install JDK 8
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY app/ /app/

# 设置JAVA_HOME环境变量
# Install JDK 8
RUN rm -rf /var/lib/apt/lists/*

ENV SPARK_HOME=/app/spark


EXPOSE 9003

CMD ["bash", "start.sh"]
