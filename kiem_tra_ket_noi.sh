#!/usr/bin/env bash
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    echo "dia chi mang co ket noi internet"
else
    echo "dia chi mang khong co ket noi internet"
fi

