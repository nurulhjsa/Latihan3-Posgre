SELECT 
   K.nama_lengkap, 
   L.street_address ||', '|| L.city,
   D.department_name,
   J.job_title
FROM
   karyawan_tdi K
JOIN departments D ON K.bagian = D.department_id
JOIN locations L ON K.alamat_rumah = L.location_id
JOIN jobs J ON K.jabatan = J.job_id
WHERE 
   J.job_id = 'IT_PROG'
   
UNION ALL
SELECT
   E.first_name ||' '|| E.last_name AS nama_lengkap,
   L.street_address ||', '|| L.city AS alamat_rumah,
   D.department_name AS D,
   J.job_title AS sebagai
FROM
   employees E
JOIN departments D ON E.department_id = D.department_id
JOIN jobs J ON E.job_id = J.job_id
JOIN locations L ON D.location_id = L.location_id
WHERE 
   J.job_id = 'IT_PROG'