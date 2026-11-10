USE db_inventori_lab;

-- Akun demo lokal saja. Akun P07 yang sudah ada tidak diubah.
INSERT INTO pengguna (username, password_hash, nama_lengkap, peran, aktif)
VALUES
('p09_admin', 'pbkdf2-sha256:600000:rpRP872e4tQJhKaWdsRYDw==:rM+mxJj+xr2pq4MeS8hGWrMtMU7boWHjfHLGt9HKZZI=', 'Admin Demo P09', 'admin', 1),
('p09_petugas', 'pbkdf2-sha256:600000:6a+XAyeYopELh427CsaPKw==:Ozb5MoleWV9m2uBAwcOcQ4lVidaaBTUfg+ppmE5M2rs=', 'Petugas Demo P09', 'petugas', 1),
('p09_nonaktif', 'pbkdf2-sha256:600000:3HyUhpcUTdymynt90UnSaw==:6oy1oJQk/DWeZWlrLqlAIpT8N3XEBw3QaBuPC5LTGHg=', 'Akun Nonaktif P09', 'petugas', 0)
ON DUPLICATE KEY UPDATE username = pengguna.username;

SELECT username, nama_lengkap, peran, aktif
FROM pengguna WHERE username IN ('p09_admin','p09_petugas','p09_nonaktif')
ORDER BY username;