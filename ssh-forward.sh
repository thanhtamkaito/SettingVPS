#!/bin/bash

# Hàm thiết lập SSH tunnel
setup_ssh_tunnel() {
    /usr/bin/ssh -N -R 1822:localhost:22 root@103.166.185.178
}

# Số lần thử lại tối đa
max_retries=3
retry_count=0

# Vòng lặp để thử lại nếu lệnh SSH thất bại
while true; do
    # Thử thiết lập SSH tunnel
    echo "Đang thiết lập SSH tunnel (lần thử lại: $((retry_count + 1)))..."
    setup_ssh_tunnel

    # Kiểm tra mã trạng thái của lệnh SSH
    ssh_exit_code=$?

    # Kiểm tra kết quả của lệnh SSH
    if [ $ssh_exit_code -eq 0 ]; then
        echo "SSH tunnel đã được thiết lập thành công."
        break  # Thoát khỏi vòng lặp nếu thành công
    else
        echo "Lệnh SSH thất bại (exit code: $ssh_exit_code)."

        retry_count=$((retry_count + 1))
        if [ $retry_count -eq $max_retries ]; then
            echo "Đã đạt số lần thử lại tối đa ($max_retries lần). Không thể thiết lập SSH tunnel."
            break  # Thoát khỏi vòng lặp nếu đã thử lại đủ số lần
        else
            echo "Đang thử lại sau 5 giây..."
            sleep 5  # Đợi 5 giây trước khi thử lại
        fi
    fi
done

#  Create service
#
#  sudo vi /etc/systemd/system/autossh.service
#  [Unit]
# Description=AutoSSH with Retry Service
# After=network.target

# [Service]
# User=root  # Thay your_username bằng tên người dùng muốn chạy script
# ExecStart=/root/autossh.sh

# [Install]
# WantedBy=multi-user.target

# Step 3:
#  sudo systemctl daemon-reload
# sudo systemctl enable autossh.service
# sudo systemctl start autossh.service





















