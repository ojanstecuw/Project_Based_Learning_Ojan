# Project Sistem Operasi -- Manajemen File Otomatis

Proyek ini dibuat untuk memenuhi tugas Project Based Learning (PBL) pada
mata kuliah *Sistem Operasi*.\
Fokus: penggunaan perintah dasar Linux (ls, find, grep, wc,
du, sort, uniq) + piping (|) + redirection (>), untuk
mengelola file dan membuat laporan otomatis.

------------------------------------------------------------------------

## 📁 Struktur Direktori Proyek

    project_sistem_operasi_ojan/
    ├── src/
    │   └── main.sh
    ├── documents/
    ├── images/
    ├── archives/
    ├── logs/
    └── data/

------------------------------------------------------------------------

## 🎯 Tujuan Proyek

1.  Otomatisasi pembuatan direktori\
2.  Mengelompokkan file berdasarkan ekstensi (txt, jpg, zip)\
3.  Pencarian file berdasarkan *nama* dan *isi*\
4.  Generasi laporan sistem secara otomatis\
5.  Menerapkan perintah dasar Linux + teknik piping & redirection

------------------------------------------------------------------------

## ⚙️ Fitur Utama Script

-   *Setup Direktori Otomatis*\
    Script membuat folder:

    -   documents/
    -   images/
    -   archives/
    -   logs/
    -   data/

-   *Generate File Sample*

    -   10 file teks (.txt)\
    -   5 file gambar (.jpg)\
    -   5 file arsip (.zip)

-   *Organisasi File*\
    Mengelompokkan file berdasarkan ekstensi menggunakan find + mv.

-   *Pencarian File*

    -   Berdasarkan nama (find)\
    -   Berdasarkan konten (grep -Rni)

-   *Generate Laporan Sistem*\
    Laporan mencakup:

    -   Jumlah file tiap folder (ls | wc)\
    -   Jumlah file TXT (piping ls | grep | wc)\
    -   Statistik ekstensi file (find | sort | uniq)\
    -   Ukuran total proyek (du -sh)\
    -   Info README.md (wc)\
    -   5 file terbaru (ls -lt | head)

    Laporan disimpan di file report.txt

------------------------------------------------------------------------

## ▶️ Cara Menjalankan Script

 bash
cd ~/project_sistem_operasi_ojan
chmod +x src/main.sh
./src/main.sh


Ikuti menu untuk pilihan: 1. Setup Direktori\
2. Generate File Sample\
3. Organisasi File\
4. Cari File\
5. Cari Konten\
6. Generate Laporan\
7. Keluar

------------------------------------------------------------------------

## 🔧 Perintah Linux yang Digunakan

  Perintah        Kegunaan
  --------------- ----------------------------
  mkdir           Membuat direktori
  touch           Buat file kosong
  find            Cari file
  grep -Rni       Cari teks di dalam file
  mv              Pindahkan file
  ls              List isi direktori
  wc              Hitung baris/kata/karakter
  du              Tampilkan ukuran direktori
  sort            Sortir output
  uniq            Hapus duplikat
  head            Ambil baris teratas
                  (pipe)
  \> (redirect)   Menyimpan output ke file

------------------------------------------------------------------------

## 👤 Identitas Pembuat

*Nama:* Fauzan Al-Fakhri Muhamad\
*NIM:* 05301425064\
*Program Studi:* Sistem Informasi\
*Mata Kuliah:* Sistem Operasi\
*Universitas:* Universitas Negeri Gorontalo

------------------------------------------------------------------------

## 📌 Catatan Tambahan

-   Script sangat fleksibel dan bisa dikembangkan menjadi sistem backup
    otomatis.\
-   Jika ingin menambahkan jenis file baru, tinggal modifikasi skrip
    main.sh.\
-   Semua interaksi terjadi di terminal (CLI), cocok untuk latihan
    administrasi sistem.

------------------------------------------------------------------------

## 🚀 Kesimpulan

Proyek ini memperlihatkan bagaimana perintah dasar Linux dapat
digabungkan untuk membangun manajemen file otomatis yang efisien ---
mirip tugas seorang sysadmin di dunia nyata.
