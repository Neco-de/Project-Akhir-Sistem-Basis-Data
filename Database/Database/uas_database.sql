-- DDL 
-- DATABASE

CREATE DATABASE IF NOT EXISTS UAS;
USE UAS;


-- MASTER TABLE


CREATE TABLE jenisBarang (
    idjenisBarang INT PRIMARY KEY,
    namaJenisBarang VARCHAR(50)
);

CREATE TABLE barang (
    idBarang INT PRIMARY KEY,
    unitBarang VARCHAR(100),
    stock INT,
    harga INT,
    idjenisBarang INT,
    FOREIGN KEY (idjenisBarang) REFERENCES jenisBarang(idjenisBarang)
);

CREATE TABLE kasir (
    idKasir INT PRIMARY KEY,
    namaKasir VARCHAR(50),
    noHp VARCHAR(20)
);

CREATE TABLE sales (
    idSales INT PRIMARY KEY,
    nama VARCHAR(50),
    jabatan VARCHAR(20)
);

CREATE TABLE pelanggan (
    idPelanggan VARCHAR(10) PRIMARY KEY,
    jenisPelanggan VARCHAR(20),
    noHp VARCHAR(20)
);

CREATE TABLE vendor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idVendor INT,
    namaVendor VARCHAR(50),
    alamatVendor VARCHAR(50),
    idBarang INT,
    idjenisBarang INT,
    FOREIGN KEY (idBarang) REFERENCES barang(idBarang),
    FOREIGN KEY (idjenisBarang) REFERENCES jenisBarang(idjenisBarang)
);


-- TRANSAKSI


CREATE TABLE transaksi (
    noTransaksi VARCHAR(50) PRIMARY KEY,
    tanggal DATE,
    total INT,
    kas INT,
    kembalian INT,
    kuantitas INT,
    noNota INT,
    subtotal INT,
    idKasir INT,
    idSales INT,
    idPelanggan VARCHAR(10),
    FOREIGN KEY (idKasir) REFERENCES kasir(idKasir),
    FOREIGN KEY (idSales) REFERENCES sales(idSales),
    FOREIGN KEY (idPelanggan) REFERENCES pelanggan(idPelanggan)
);

CREATE TABLE detailBarang (
    subtotal INT,
    idBarang INT,
    noTransaksi VARCHAR(50),
    FOREIGN KEY (idBarang) REFERENCES barang(idBarang),
    FOREIGN KEY (noTransaksi) REFERENCES transaksi(noTransaksi)
);
