#!/bin/bash

# 查找进程
process_name="hugo"
process_id=$(ps aux | grep "$process_name" | grep -v grep | awk '{print $2}')

# 杀死进程
if [ -n "$process_id" ]; then
  kill $process_id
  echo "进程 $process_name 已成功终止，服务停止成功..."
#  nohup ./hugo server --baseURL=qa-links.91duobaoyu.com --bind=0.0.0.0 &
#  echo "测试导航页面部署成功..."
#else
#  echo "未找到进程 $process_name"
#  nohup ./hugo server --baseURL=qa-links.91duobaoyu.com --bind=0.0.0.0 &
#  echo "测试导航页面部署成功..."
#fi