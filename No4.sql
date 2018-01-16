CREATE TABLE karyawan_tdi(
   kode_karyawan Integer Primary Key,
   nama_lengkap Varchar(50) Not Null,
   alamat_rumah Integer Not Null REFERENCES locations (location_id),
   alamat_domilisi Integer Not Null REFERENCES locations (location_id),
   jabatan Varchar(10) Not Null REFERENCES jobs (job_id),
   bagian Integer Not Null REFERENCES departments (department_id)
)

--SELECT * FROM karyawan_tdi