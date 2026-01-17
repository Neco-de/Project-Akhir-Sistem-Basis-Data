# Project-Akhir-Sistem-Basis-Data

Repository ini berisi Project Akhir Mata Kuliah Sistem Basis Data yang mencakup perancangan database, pembuatan tabel, relasi antar tabel, serta implementasi query SQL menggunakan DBMS MySQL. Proyek ini dibuat sebagai bagian dari Ujian Akhir Semester (UAS).

---
## Anggota Kelompok
- Aditya  
- Adnan  
- Hasan  

---

## Tools dan Teknologi yang Digunakan
- **MySQL**  
  Digunakan sebagai Database Management System (DBMS) untuk mengelola dan menyimpan data.
- **XAMPP**  
  Digunakan sebagai server lokal untuk menjalankan layanan Apache dan MySQL (MariaDB).
- **MySQL Workbench / phpMyAdmin** (opsional)  
  Digunakan untuk mempermudah pembuatan database, eksekusi query, dan visualisasi data.

---

## Struktur Database
Proyek ini terdiri dari beberapa tabel utama yang saling berelasi, yaitu:
- **barang**  
  Menyimpan data barang, stok, dan harga.
- **jenisBarang**  
  Menyimpan kategori barang seperti Alat Makan, Tempat Minum, dan Toples.
- **kasir**  
  Menyimpan data petugas kasir.
- **sales**  
  Menyimpan data petugas sales.
- **pelanggan**  
  Menyimpan data pelanggan.
- **vendor**  
  Menyimpan data pemasok serta keterkaitannya dengan barang.
- **transaksi** dan **detailBarang**  
  Digunakan untuk mencatat data transaksi penjualan dan rincian barang yang terjual.

---

## Langkah Instalasi dan Setup Database
1. Install aplikasi XAMPP pada perangkat.
2. Jalankan layanan Apache dan MySQL melalui XAMPP Control Panel.
3. Buka MySQL Workbench atau phpMyAdmin.
4. Buat koneksi baru ke database MySQL.
5. Jalankan file SQL untuk membuat database dan tabel yang dibutuhkan.

---

## Cara Menjalankan Program
- **Query Dasar**  
  Menggunakan perintah SELECT untuk menampilkan isi data pada tabel.
- **Pencarian Data**  
  Menggunakan perintah LIKE untuk mencari data barang berdasarkan nama.
- **Filter Data**  
  Menggunakan perintah BETWEEN untuk menampilkan barang dengan stok antara 2 hingga 10 unit.
- **Join Tabel**  
  - INNER JOIN digunakan untuk menampilkan data yang memiliki relasi antar tabel.  
  - LEFT JOIN digunakan untuk menampilkan seluruh data barang, termasuk barang yang belum memiliki data vendor.

---

## Catatan
Proyek ini menerapkan penggunaan perintah SQL seperti DDL, DML, dan TCL.  
Query transaksi menggunakan perintah ROLLBACK sehingga tidak mengubah data secara permanen.

---
