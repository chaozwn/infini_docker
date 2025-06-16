# 使用Ubuntu 22.04作为基础镜像
FROM docker.m.daocloud.io/ubuntu:22.04

# 设置非交互式安装，避免安装过程中的提示
ENV DEBIAN_FRONTEND=noninteractive

# 设置工作目录
WORKDIR /app
# 替换为阿里云源
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt-get update

# 更新包列表并安装基础依赖
RUN apt-get install -y \
    curl \
    wget \
    unzip \
    git \
    build-essential \
    software-properties-common 

# 安装Python 3.10+
RUN apt-get install -y software-properties-common \
  python3.11 \
  python3-pip \
  python3.11-dev \
  python3-setuptools \
  && ln -sf /usr/bin/python3.11 /usr/bin/python3 \
  && ln -sf /usr/bin/python3.11 /usr/bin/python

RUN pip install -U auto-coder --index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 安装Node.js 22+
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app

# 挂载代替copy, 把app/挂载到/app/

COPY app/ /app/

RUN npm install -g pnpm

RUN pnpm install

EXPOSE 7001

CMD ["node", "dist/main.js"]
