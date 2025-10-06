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

-- 3. Isi data (insert) nama, umur, jurusan
INSERT INTO siswa (nama, umur, jurusan)
VALUES  ('Andi', 16, 'IPA'),
        ('Budi', 17, 'IPS'),
        ('Sofia', 17, 'IPS'),
        ('Dimas', 16, 'IPS'),
        ('Marfrida', 16, 'IPA'),
        ('Hadiid', 17, 'IPA'),
        ('Ade', 16, 'IPS'),
        ('Fira', 17, 'IPA'),
        ('Mutiara', 16, 'IPA'),
        ('Safa', 15, 'IPS');

-- 4. Isi data (insert) nilai
INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
VALUES  (1, 'Matematika', 85), 
        (2, 'Bahasa Inggris', 90),
        (3, 'Matematika', 100), 
        (4, 'Bahasa Inggris', 95),
        (5, 'Matematika', 80), 
        (6, 'Bahasa Inggris', 88),
        (7, 'Matematika', 89), 
        (8, 'Bahasa Inggris', 80),
        (9, 'Matematika', 83), 
        (10, 'Bahasa Inggris', 92);

-- 5. Query Data (select)
SELECT * 
FROM siswa;

SELECT nama 
FROM siswa 
WHERE jurusan = 'IPA';

SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama
ORDER BY siswa.nama;

-- 6. Update dan Delete
UPDATE siswa SET jurusan = 'IPS' WHERE id=1;

DELETE FROM nilai WHERE id = 1;
