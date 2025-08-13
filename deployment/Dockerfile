# 使用 Ubuntu 20.04 作為基底映像
FROM ubuntu:20.04 AS base

# 設定非互動式安裝（避免 tzdata 等套件卡住）
ARG DEBIAN_FRONTEND=noninteractive

# 安裝必要工具（如果未來需要）
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# 建立最終映像，從 hpdevelop/supercronic:0.2.34 拷貝 supercronic 執行檔
FROM ubuntu:20.04 AS runtime

# 建立證書目錄（supercronic 執行時可能需要）
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# 複製 supercronic 執行檔
COPY --from=hpdevelop/supercronic:0.2.34 /usr/local/bin/supercronic /usr/local/bin/supercronic

# 確保可執行
RUN chmod +x /usr/local/bin/supercronic

# 設定工作目錄
WORKDIR /app

# 設定 Entrypoint 為 bash
ENTRYPOINT ["/bin/bash"]

# 預設啟動指令
CMD ["-c", "echo \"Hello Supercronic\""]