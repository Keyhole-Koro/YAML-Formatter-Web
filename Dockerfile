# Ubuntuをベースイメージとして使用
FROM ubuntu:latest

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y nginx

# ローカルの public ディレクトリを /usr/share/nginx/html にコピー
COPY ./public /usr/share/nginx/html

# nginxを起動
CMD ["nginx", "-g", "daemon off;"]

# ポート80を公開
EXPOSE 80
