#!/bin/bash
# shields.io

# warna
h="\e[1;32m"
m="\e[1;31m"
r="\e[0m"
k="\e[1;33m"
p="\e[1;39m"
c="\e[1;36m"

echo -e ""
echo -e "${m}#####################################################"
echo -e "${m}# ${h}--------------------- ${p}TENTANG ${h}------------------- ${m}#"
echo -e "${m}# ${p}program ${h}: ${p}Membuat lencana untuk repositori Github ${m}#"
echo -e "${m}# ${p}pembuat ${h}: ${p}Rofi                                    ${m}#"                                                                     echo -e "${m}# ${p}versi   ${h}: ${p}1.0                                     ${m}#"
echo -e "${m}# ${p}beranda ${h}: ${p}https://github.com/FII14/shields.io     ${m}#"
echo -e "${m}# ${h}------------------------------------------------- ${m}#"
echo -e "${m}#####################################################"
echo -e ""

#link beranda
beranda="https://github.com/FII14/shields.io"

# link untuk membuat lencana
link_shields="https://img.shields.io/badge/"


read -p $'\e[1;39m[\e[1;34m»\e[1;39m] Masukan keterangan\e[1;39m: ' keterangan

if [[ -z "${keterangan}" ]]; then
        echo -e "${p}[${m}×${p}] Kesalahan: keterangan tidak boleh kosong.${r}"
        exit 0
fi

read -p $'\e[1;39m[\e[1;34m»\e[1;39m] Masukan pesan\e[1;39m: ' pesan

if [[ -z "${pesan}" ]]; then
        echo -e "${p}[${m}×${p}] Kesalahan: pesan tidak boleh kosong.${r}"
        exit 0
fi

read -p $'\e[1;39m[\e[1;34m»\e[1;39m] Masukan warna\e[1;39m: ' warna

if [[ -z "${warna}" ]]; then
        echo -e "${p}[${m}×${p}] Kesalahan: warna tidak boleh kosong.${r}"
        exit 0
fi

# warna hijau terang
if [[ "${warna}" == "hijau terang" ]]; then
        warna="brightgreen"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna hijau
elif [[ "${warna}" == "hijau" ]]; then
        warna="green"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna kuning hijau
elif [[ "${warna}" == "kuning hijau" ]]; then
        warna="yellowgreen"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna kuning
elif [[ "${warna}" == "kuning" ]]; then
        warna="yellow"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna orange
elif [[ "${warna}" == "orange" ]]; then
        warna="orange"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna merah
elif [[ "${warna}" == "merah" ]]; then
        warna="red"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna biru
elif [[ "${warna}" == "biru" ]]; then
        warna="blue"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna abu-abu terang
elif [[ "${warna}" == "abu-abu terang" ]]; then
        warna="lightgrey"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna tidak tersedia
else
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${m}×${p}] Kesalahan: warna ${warna} tidak ada.${r}"
        echo ""
        echo -e "${p}[${k}!${p}] Kunjungi: '${beranda}' untuk melihat dokumentasi shields.io${r}"

fi