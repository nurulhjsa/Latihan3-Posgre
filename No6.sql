SELECT 
   K.nama_lengkap AS nama, 
   Lr.street_address ||', '|| Lr.city AS alamat_rumah,
   Ld.street_address ||', '|| Ld.city AS alamat_domisili,
   D.department_name AS nama_divisi,
   J.job_title AS sebagai
FROM
   karyawan_tdi K
JOIN departments D ON K.bagian = D.department_id
JOIN locations Lr ON K.alamat_rumah = Lr.location_id
JOIN locations ld ON K.alamat_domisili = Ld.location_id
JOIN jobs J ON K.jabatan = J.job_id