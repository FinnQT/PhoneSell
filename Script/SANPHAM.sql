--DATABASE QUAN LY CUA HANG DIEN THOAI DI DONG

--TAO BANG SANPHAM
CREATE TABLE SANPHAM(
    MaSP CHAR(5) NOT NULL PRIMARY KEY,
    MaKM CHAR(5),
    MaNCC CHAR(5),
    TenSP VARCHAR2(30),
    MauSac VARCHAR2(10),
    DonGia NUMBER,
    SoLuong NUMBER
);




-------------TAO KHOA NGOAI

ALTER TABLE SANPHAM ADD CONSTRAINT FK_SPNCC FOREIGN KEY (MANCC) REFERENCES NHACUNGCAP(MANCC);
ALTER TABLE SANPHAM ADD CONSTRAINT FK_SPKM FOREIGN KEY (MAKM) REFERENCES KHUYENMAI(MAKM);