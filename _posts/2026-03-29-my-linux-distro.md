--- 
layout: post
image: ../assets/images/nixos-ff.png
featured: true
title: "Distro Linux yang Gua Pakai"
author: irwan
categories: [Linux, Indonesia]
---

Gua udah nyobain banyak distro. Dari yang *Just work* sampai yang bikin kepala mau meledak.
Dan ujung-ujungnya? Gua malah settle di yang paling ribet NixOS.
Bukan karena gua suka menyiksa diri. Tapi karena setelah nyobain banyak hal, gua nyadar: yang gua cari bukan distro yang mudah, tapi distro yang konsisten.
Dan NixOS adalah jawabannya. Dengan segala trade-off-nya.

---

## Distro Immutable… tapi Nggak Immutable?


Distro Immutable… tapi Nggak Immutable?
Kalau kalian nyari distro immutable, biasanya bakal nemu nama-nama kayak:

- Fedora Atomic / Silverblue
- openSUSE MicroOS
- Vanilla OS
- NixOS
- GNU Guix

Kebanyakan distro di list itu immutable dalam artian harfiah: file system-nya read-only, dan perubahan hanya bisa terjadi - lewat update resmi atau overlay terpisah.

NixOS beda.

File system-nya bisa diubah. Tapi bukan itu intinya.

Yang bikin NixOS "immutable" bukan karena sistem-nya dikunci tapi karena setiap perubahan dikelola lewat Nix store, bukan dilempar langsung ke `/usr` atau `/lib` kayak distro biasa. Package nggak saling overwrite, dependency nggak bentrok, dan setiap "state" sistem bisa di-rollback.

Jadi kalau lu nanya: *"Apakah NixOS benar-benar immutable?"*

Jawabannya: tergantung definisi lu. Tapi yang pasti, cara dia mengelola perubahan jauh lebih ketat dan lebih aman dari distro konvensional.

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

## Penutup

**Jadi, Apakah worth It?*

Gua nggak bakal bilang NixOS itu untuk semua orang. Karena jelas bukan.
Tapi kalau lu tipe orang yang lebih milih paham sistem daripada sekadar pakai sistem NixOS itu bukan distro yang ribet. Dia distro yang jujur.
Dia maksa lu buat ngerti apa yang lu lakuin. Dan di situ justru letak value-nya.
Gua pribadi nggak nyesel. Justru setelah pakai NixOS, gua lebih ngerti Linux secara keseluruhan bukan cuma hafal command.
Kalau lu penasaran, coba aja. Worst case: lu balik ke distro lama dengan pemahaman yang lebih dalam. Best case: lu nggak balik-balik lagi.

---
