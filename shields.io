#!/bin/bash
# shields.io

# variabel warna
h="\e[1;32m" # hijau
m="\e[1;31m" # merah
r="\e[0m"    # reset
k="\e[1;33m" # kuning
p="\e[1;39m" # putih
c="\e[1;36m" # cyan

# token
token=$(echo -n "MTQxMjIwMDM=" | base64 -d)

# memasukan token
read -s -p "[»] Masukan token: " masukan_token

# kondisi jika user salah memasukan token
if [[ "${masukan_token}" !=  "${token}" ]]; then
        echo -e "\n[×] Kesalahan: token tidak valid."
        exit 0
fi

clear

# logo shields.io
echo -e "${m}"
echo -e "${m}###########################################################"
echo -e "${m}# ${h}--------------------- ${p}KETERANGAN ${h}---------------------- ${m}#${r}"
echo -e "${m}# ${p}Nama program      ${h}: ${p}shields.io                          ${m}#${r}"
echo -e "${m}# ${p}Deskripsi program ${h}: ${p}Membuat lencana untuk repo Github   ${m}#${r}"
echo -e "${m}# ${p}Pembuat program   ${h}: ${p}Rofi                                ${m}#${r}"
echo -e "${m}# ${p}Versi program     ${h}: ${p}1.0                                 ${m}#${r}"
echo -e "${m}# ${p}Beranda program   ${h}: ${p}https://github.com/FII14/shields.io ${m}#${r}"
echo -e "${m}# ${h}------------------------------------------------------- ${m}#${r}"
echo -e "${m}###########################################################"
echo -e "${r}"

#link beranda
beranda="https://github.com/FII14/shields.io"

# link untuk membuat lencana
link_shields="https://img.shields.io/badge/"

# meminta masukan keterangan 
read -p $'\e[1;39m[\e[1;34m»\e[1;39m] Masukan keterangan\e[1;39m: ' keterangan

# kondisi jika masukan keterangan kosong
if [[ -z "${keterangan}" ]]; then
        echo -e "${p}[${m}×${p}] Kesalahan: keterangan tidak boleh kosong.${r}"
        exit 0
fi

# meminta masukan pesan
read -p $'\e[1;39m[\e[1;34m»\e[1;39m] Masukan pesan\e[1;39m: ' pesan

# kondisi jika masukan pesan kosong
if [[ -z "${pesan}" ]]; then
        echo -e "${p}[${m}×${p}] Kesalahan: pesan tidak boleh kosong.${r}"
        exit 0
fi

# meminta masukan warna
read -p $'\e[1;39m[\e[1;34m»\e[1;39m] Masukan warna\e[1;39m: ' warna

# kondisi jika masukan warna kosong
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

# warna abu-abu muda
elif [[ "${warna}" == "abu-abu muda" ]]; then
        warna="lightgrey"
        echo -e "\n${p}[${c}INFO${p}]${r}\n"
        echo -e "${p}[${h}+${p}] Lencana: ![lencana](${link_shields}${keterangan}-${pesan}-${warna})${r}"
        exit 0

# warna ungu terang
elif [[ "${warna}" == "ungu" ]]; then
        warna="blueviolet"
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
