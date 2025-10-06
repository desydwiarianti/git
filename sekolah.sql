-- 1. Membuat tabel siswa
CREATE TABLE siswa (
    id SERIAL PRIMARY KEY,          
    nama VARCHAR(100) NOT NULL,
    umur INT,
    jurusan VARCHAR(100)
);

-- 2. Membuat tabel nilai
CREATE TABLE nilai (
    id SERIAL PRIMARY KEY,
    siswa_id serial4 NOT NULL,
    mata_pelajaran VARCHAR(100),
    nilai INT,
    FOREIGN KEY (siswa_id) REFERENCES siswa(id)
);

