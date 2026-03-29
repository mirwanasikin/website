--- 
layout: post
image: ../assets/images/nixos-ff.png
featured: true
title: "Distro Linux yang Gua Pakai"
author: irwan
categories: [Linux, Indonesia]
---

## Distro Linux yang Gua Pakai

Jadi mungkin banyak dari kalian mikir kalau gua bakal pakai Arch atau Ubuntu.  
Apalagi kalau kalian tahu gua cukup lama di dunia Linux.

Tapi sekarang… gua justru pakai **NixOS**.

Kenapa?  
Padahal ada Arch yang fleksibel atau Ubuntu yang terkenal stabil.

---

## Distro Immutable… tapi Nggak Immutable?

Kalau kalian pernah nyari distro immutable, biasanya bakal nemu list kayak gini:

- Fedora Atomic / Silverblue  
- Ubuntu Core  
- openSUSE MicroOS  
- Vanilla OS  
- NixOS  
- GNU Guix  
- dll  

Biasanya, distro immutable itu identik dengan sistem yang *read-only* atau nggak bisa diubah sembarangan.

Dan ya, itu benar… untuk kebanyakan distro.

Tapi NixOS agak beda.

Dia sering dimasukin ke kategori immutable, tapi kenyataannya **file system-nya tetap bisa diubah**.  
Bedanya, perubahan itu nggak dilakukan secara bebas seperti distro lain.

---

## Deklaratif: Cara Kerja yang Beda Total

Di distro lain, kita biasa install sesuatu dengan cara:

- `apt install`
- `pacman -S`
- `dnf install`

Di NixOS? Nggak ada cerita begitu.

NixOS pakai pendekatan **deklaratif**.  
Artinya, lu nggak “ngelakuin step”, tapi lu “nentuin hasil akhir”.

Analoginya simpel:

- Distro biasa → lu tukang bangunan  
  Lu bangun rumah dari nol, satu per satu (lantai, dinding, atap)

- NixOS → lu arsitek  
  Lu cuma bilang: “Gua mau rumah kayak gini”  
  Dan sistem yang bakal “bangun” sesuai desain lu

Semua itu ditulis di satu file: `configuration.nix`

---

## Apakah Sulit?

Jawaban jujurnya: **iya, sulit**.

Dan ini bukan sulit yang bisa diremehin.

Di awal, lu bakal ngerasa:

- Error message aneh banget  
- Konfigurasi terasa kaku  
- Nggak bisa install sesuatu secara “iseng”  

Semua harus dideklarasikan dulu.

Tapi justru di situ letak kekuatannya.

---

## Gua Pakai NixOS Buat Apa?

Buat gua pribadi, NixOS bukan cuma soal distro, tapi soal workflow.

Beberapa hal yang gua dapet:

- Environment dev yang konsisten  
- Bisa recreate setup di mana aja  
- Nggak takut ngerusak sistem saat eksperimen  
- Cocok banget buat belajar DevOps & system design  

Dan yang paling penting:

> “It works on my machine” 

hampir nggak kejadian lagi.

Kalau di satu tempat jalan, kemungkinan besar di tempat lain juga jalan.

---

## Siapa yang Cocok Pakai NixOS?

Menurut gua:

- DevOps / Platform Engineer  
- Developer yang butuh reproducibility  
- Orang yang suka sistem rapi dan terstruktur  

---

## Siapa yang Nggak Cocok?

Jujur aja, NixOS bukan buat semua orang.

Mungkin nggak cocok kalau:

- Lu pengen install sesuatu dengan cepat tanpa mikir  
- Nggak mau ribet sama konfigurasi  
- Lebih nyaman dengan cara “tradisional” Linux  

---
