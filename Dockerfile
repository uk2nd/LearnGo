# Go開発環境用のイメージ
FROM golang:1.21-alpine

# 開発に必要なツールをインストール
RUN apk add --no-cache \
    git \
    bash \
    curl \
    vim \
    tree

# 作業ディレクトリを設定
WORKDIR /app

# ポートを公開（開発用）
EXPOSE 8080

# デフォルトでbashシェルを起動
CMD ["/bin/bash"]

