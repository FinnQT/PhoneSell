
---------------TRIGGER
--KI?M TRA THÊM NGÀY KHUY?N MÃI
create or replace TRIGGER check_ngkm
BEFORE INSERT ON KHUYENMAI
FOR EACH ROW
DECLARE
BEGIN
    IF TO_DATE(:NEW.NgayKT,'dd/mm/yyyy') < TO_DATE(:NEW.NgayBD,'dd/mm/yyyy') THEN
        RAISE_APPLICATION_ERROR(-20000,'Ngay ket thuc khong hop le,vui long nhap lai');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nhap ngay ket thuc thanh cong');
    END IF;
END;
--KI?M TRA C?P NH?T NGÀY KHUY?N MÃI
CREATE OR REPLACE TRIGGER check_update_ngkm
BEFORE UPDATE ON KHUYENMAI
FOR EACH ROW
DECLARE
BEGIN
    IF TO_DATE(:NEW.NgayKT,'dd/mm/yyyy') < TO_DATE(:NEW.NgayBD,'dd/mm/yyyy') THEN
        RAISE_APPLICATION_ERROR(-20000,'Ngay ket thuc khong hop le,vui long nhap lai');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nhap ngay ket thuc thanh cong');
    END IF;
END;

-- KI?M TRA NGÀY B?O HÀNH
CREATE OR REPLACE TRIGGER check_ngbh
BEFORE INSERT ON PHIEUBAOHANH
FOR EACH ROW
DECLARE
BEGIN
    IF TO_DATE(:NEW.NgayHetHan,'dd/mm/yyyy') < TO_DATE(:NEW.NgayBatDau,'dd/mm/yyyy') THEN
        RAISE_APPLICATION_ERROR(-20000,'Ngay ket thuc khong hop le,vui long nhap lai');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nhap ngay ket thuc thanh cong');
    END IF;
END;


---KI?M TRA C?P NH?T B?O HÀNH
CREATE OR REPLACE TRIGGER check_update_ngbh
BEFORE UPDATE ON PHIEUBAOHANH
FOR EACH ROW
DECLARE
BEGIN
    IF TO_DATE(:NEW.NgayHetHan,'dd/mm/yyyy') < TO_DATE(:NEW.NgayBatDau,'dd/mm/yyyy') THEN
        RAISE_APPLICATION_ERROR(-20000,'Ngay ket thuc khong hop le,vui long nhap lai');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nhap ngay ket thuc thanh cong');
    END IF;
END;


--RÀNG BU?C S? L??NG NHÂN VIÊN PHÒNG BAN
create or replace TRIGGER check_update_soluongNV
BEFORE INSERT ON NHANVIEN
FOR EACH ROW
DECLARE
    slnv PHONGBAN.SoLuongNV%TYPE;
BEGIN
    SELECT COUNT(MaPB) INTO slnv
    FROM NHANVIEN
    WHERE MaPB=:NEW.MaPB
    GROUP BY :NEW.MaPB;
    IF (10-slnv<1) THEN
        RAISE_APPLICATION_ERROR(-20000,'So luong nhan vien da day');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Them nhan vien thanh cong');
        UPDATE PHONGBAN SET SoLuongNV=SoLuongNV+1 WHERE MaPB=:NEW.MaPB;
    END IF;
END;

-- C?P NH?T L?I S? L??NG KHI BÁN S?N PH?M
create or replace TRIGGER update_slsp
AFTER INSERT ON CTHD_BANSP
FOR EACH ROW
DECLARE

BEGIN
   IF(INSERTING) THEN
        UPDATE SANPHAM s SET s.soluong = s.soluong - :NEW.soluong
        WHERE s.masp= :NEW.MASP;
    END IF;
END;
