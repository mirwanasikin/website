---
title: Kenapa aku cinta NixOS
layout: post
author: irwan
featured: true
image: ../assets/images/fastfetch_nixos.png
categories: [Linux, Indonesia]
---

Dari trauma instalasi sampai jatuh cinta cerita panjang yang (semoga) singkat.

---

## Awal kenalan

November 2025. Lagi gabut, kepikiran satu pertanyaan: _distro apa yang cocok buat kantor?_

Jawabannya gampang Ubuntu. Ramah pemula, banyak yang pakai, udah jelas. Tapi bayangkan 100 PC di satu kantor. Kalau yang instal kelelahan dan lupa pasang sesuatu, repot.

Ansible bisa jadi solusi, tapi Ansible butuh OS yang sudah berjalan, butuh SSH, butuh IP tiap PC. Ada gap di sana yang belum ketutup.

Dari situlah aku ketemu NixOS dengan tiga sifat yang langsung menarik perhatian:

- **Reproducible** works di satu PC, works di semua PC.
- **Immutable** untuk pengguna awam, lebih aman dan stabil dari distro biasa.
- **Deklaratif** kamu deklarasikan hasil akhir, bukan nulis langkah demi langkah.

OS sempurna, pikirku. Setidaknya sebelum bencana.

---

## Instalasi, penggunaan, dan trauma

Aku mulai dari YouTube nonton dari channel [tony](https://youtube.com/@tony-btw)

[![How to Install and Customize NixOS Linux (2026 Edition) Part 1](https://img.youtube.com/vi/lUB2rwDUm5A/hqdefault.jpg)](https://www.youtube.com/watch?v=lUB2rwDUm5A&t=1103s)

> How to Install and Customize NixOS Linux (2026 Edition) | Part 1

dan berpikir, _"ini lebih simpel dari Arch, BTW."_

Keputusan pertama: langsung pakai i3 Window Manager, padahal aku belum pernah sentuh WM sama sekali sebelumnya. Modal nekat.

Hasilnya? Trauma. Dua hal baru sekaligus belajar NixOS sebagai sistem, plus belajar window manager dari nol — itu bukan ide terbaik. Aku menyerah di WM, reinstall, pasang GNOME. Lumayan. Tapi begitu aku coba utak-atik `systemd-resolved` dan firewall, bingung lagi. Akhirnya balik ke Fedora.

---

## Kembali lagi — dengan bekal

Maret 2026. Setelah serius belajar Terraform dan Ansible, aku mulai merasakan sendiri enaknya pendekatan deklaratif. Aku juga sudah pakai Nix Package Manager di Fedora untuk tool CLI yang tidak ada di repositori resmi. Polanya mulai masuk di kepala.

Aku pelajari tipis-tipis cara kerja Nix dan Nix language, nonton kembali video tony dan ini adalah video terbaru soal NixOS dia sampai artikel ini publish.

[![How to Install NixOS From Scratch (2026 Edition) Flakes + Home Manager Full Guide](https://img.youtube.com/vi/2QjzI5dXwDY/hqdefault.jpg)](https://www.youtube.com/watch?v=2QjzI5dXwDY&t=515s)

> How to Install NixOS From Scratch (2026 Edition) | Flakes + Home Manager Full Guide

tentang Flakes + Home Manager, dan kali ini aku pahami betul polanya. Setelah pede, aku install lagi tapi dengan pendekatan yang beda total.

---

## Awal install (yang kedua)

Kali ini aku langsung pakai Sway, karena di Fedora sebelumnya aku sudah terbiasa. Tapi ada masalah: aku masih pakai Home Manager secara standalone dan masih bergantung pada Flatpak. Jadi workflow update-ku jadi seperti ini:

```bash
sudo nixos-rebuild switch
nix run home-manager/master -- switch --flake ./nix#irwan
flatpak update
```

Kelihatan banget ini mindset Fedora yang kebawa. Bukan NixOS yang sebenarnya.

---

## Perbaikan dan jatuh cinta

Aku reinstall sekali lagi dari scratch — tapi kali ini aku ubah total pendekatannya. Flatpak ditinggal. Home Manager disatukan ke `configuration.nix` sebagai modul NixOS. Config dotfiles Fedora lama aku import hanya yang perlu, sisanya aku tulis ulang dengan cara yang deklaratif.

Hasilnya, sistem yang aku mau. Semuanya:

- **Deklaratif** config adalah source of truth.
- **Reproducible** satu config, bisa deploy ke mana saja.
- **Rollback** ada safety net generasi sebelumnya.
- **Repository luas** hampir semua tool ada.

Rasa distro-hopping yang dulu selalu ada tiba-tiba hilang. Karena config bisa di-version control lewat Git, aku juga tahu persis apa yang terinstal — tidak ada lagi software misterius yang tiba-tiba ada entah dari mana.

---

## Apakah NixOS end game? Apakah recommended?

Untuk aku pribadi, ya NixOS adalah end game. Bukan karena distro lain jelek, tapi karena aku tidak tertarik lagi kembali ke model imperatif.

Tapi aku _tidak_ merekomendasikan NixOS untuk semua orang, terutama pemula. Kalau kamu tanya ke aku apakah Nix atau NixOS worth dipelajari, aku balik tanya tiga hal:

1. **Apakah pekerjaanmu butuh NixOS?** Kalau tidak, ini hanya opsional.
2. **Apakah Nix terlihat menyeramkan bagimu?** Kalau iya, jangan dipaksakan. Bahkan kalau kamu tidak pernah sentuh Nix seumur hidup pun, tidak ada masalah.
3. **Tidak wajib, tapi genuinely tertarik?** Maka sangat recommended ini membuka perspektif baru tentang cara Linux bekerja.

---

## Penutup

Kalau kamu tertarik dengan konfigurasi NixOS-ku, bisa lihat di [GitHub](https://github.com/mirwanasikin/nixos-config).

Dan kalau mau mulai belajar Nix, ini sumber yang aku rekomendasikan:

- [Nix Wiki](https://nixos.wiki/)
- [Nix Search](https://search.nixos.org/packages)
- [Nix Community](https://nix-community.org/)
- [Nix Reference Manual](https://nix.dev/reference/nix-manual.html)
- [Nix Learn](https://nixos.org/learn/)
