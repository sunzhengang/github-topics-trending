#!/bin/bash

# GitHub Topics Trending 启动脚本

set -e

# 进入项目目录
cd "$(dirname "$0")"

# 激活虚拟环境
source venv/bin/activate

# 运行项目
echo "=========================================="
echo "GitHub Topics Trending"
echo "=========================================="
echo ""

# 解析命令行参数
if [ "$1" = "--fetch-only" ]; then
    echo "模式: 仅获取数据"
    python -m src.main --fetch-only
else
    echo "模式: 完整流程（获取 + 分析 + 邮件 + 网站）"
    python -m src.main
fi
