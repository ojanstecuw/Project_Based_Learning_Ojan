#!/bin/bash
 
# =======================================
#  Sistem Manajemen File Otomatis
#  Project Sistem Operasi
#  Dibuat untuk memenuhi tugas PBL Linux
# =======================================
 
BASE_DIR="$HOME/project_sistem_operasi_ojan"
DOC="$BASE_DIR/documents"
IMG="$BASE_DIR/images"
ARC="$BASE_DIR/archives"
LOG="$BASE_DIR/logs"
 
# ================================
# 1. Setup Struktur Direktori
# ================================
setup_directories() {
    mkdir -p $DOC $IMG $ARC $LOG
    echo "[INFO] Struktur direktori telah dibuat:"
    echo "$DOC"
    echo "$IMG"
    echo "$ARC"
    echo "$LOG"
}
 
# ================================
# 2. Generate File Sample
# ================================
generate_sample_files() {
    echo "[INFO] Membuat file-file sample..."
 
    # 10 file txt
    for i in {1..10}; do
        echo "Ini adalah file dokumentasi ke-$i" > "$DOC/doc_$i.txt"
    done
 
    # 5 file gambar sample
    for i in {1..5}; do
        echo "Sample gambar $i" > "$IMG/image_$i.jpg"
    done
 
    # 5 file arsip
    for i in {1..5}; do
        touch "$ARC/archive_$i.zip"
    done
 
    echo "[INFO] Total 20+ file sample telah dibuat."
}
 
# ================================
# 3. Organisasi File
# ================================
organize_files() {
    echo "[INFO] Mengorganisir file berdasarkan ekstensi..."
 
    find $BASE_DIR -maxdepth 1 -type f -name "*.txt" -exec mv {} $DOC \;
    find $BASE_DIR -maxdepth 1 -type f -name "*.jpg" -exec mv {} $IMG \;
    find $BASE_DIR -maxdepth 1 -type f -name "*.zip" -exec mv {} $ARC \;
 
    echo "[INFO] File berhasil dipindahkan."
}
 
# ================================
# 4. Pencarian File Berdasarkan Nama
# ================================
search_file() {
    echo -n "Masukkan nama file yang ingin dicari: "
    read name
    echo "[HASIL PENCARIAN]"
    find $BASE_DIR -name "*$name*"
}
 
# ================================
# 5. Pencarian Berdasarkan Isi File
# ================================
search_content() {
    echo -n "Masukkan keyword konten: "
    read word
    echo "[HASIL GREP]"
    grep -Rni "$word" $BASE_DIR
}
 
# ================================
# 6. Generate Laporan Lengkap
# ================================
generate_report() {
    REPORT="$BASE_DIR/report.txt"
    echo "[INFO] Membuat laporan sistem..."
 
    echo "===== LAPORAN SISTEM FILE =====" > $REPORT
    echo "Tanggal: $(date)" >> $REPORT
    echo "" >> $REPORT
 
    # Hitung jumlah file per folder
    echo "[JUMLAH FILE PER FOLDER]" >> $REPORT
    ls $DOC | wc -l | xargs echo "Documents :" >> $REPORT
    ls $IMG | wc -l | xargs echo "Images :" >> $REPORT
    ls $ARC | wc -l | xargs echo "Archives :" >> $REPORT
 
    echo "" >> $REPORT
    echo "[PIPING: Jumlah file TXT]" >> $REPORT
    ls $DOC | grep ".txt" | wc -l | xargs echo "Jumlah file TXT :" >> $REPORT
 
    echo "" >> $REPORT
    echo "[SORT + UNIQ: Statistik Ekstensi File]" >> $REPORT
    find $BASE_DIR -type f | sed 's/.*\.//' | sort | uniq -c >> $REPORT
 
    echo "" >> $REPORT
    echo "[UKURAN DIREKTORI TOTAL]" >> $REPORT
    du -sh $BASE_DIR >> $REPORT
 
    echo "" >> $REPORT
    echo "[WC: Informasi README.md]" >> $REPORT
    wc $BASE_DIR/README.md >> $REPORT
 
    echo "" >> $REPORT
    echo "[DAFTAR FILE TERBARU]" >> $REPORT
    ls -lt $BASE_DIR | head -5 >> $REPORT
 
    echo "[INFO] Laporan berhasil dibuat: $REPORT"
}
 
# ================================
# MENU UTAMA
# ================================
menu() {
    echo ""
    echo "===== MENU PROYEK ====="
    echo "1. Setup Direktori"
    echo "2. Generate File Sample"
    echo "3. Organisasi File"
    echo "4. Cari File"
    echo "5. Cari Konten"
    echo "6. Generate Laporan"
    echo "7. Keluar"
    echo -n "Pilih opsi: "
    read opt
 
    case $opt in
        1) setup_directories ;;
        2) generate_sample_files ;;
        3) organize_files ;;
        4) search_file ;;
        5) search_content ;;
        6) generate_report ;;
        7) exit 0 ;;
        *) echo "Pilihan tidak valid." ;;
    esac
}
 
# ================================
# LOOP MENU
# ================================
while true; do
    menu
done
 
