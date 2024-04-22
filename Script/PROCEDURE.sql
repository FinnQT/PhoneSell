-----PROCEDURE------

---THÊM, XÓA, C?P NH?T B?O HÀNH S?N PH?M
 create or replace PROCEDURE THEM_BAOHANHSP(ma baohanhsp.mabh%type, ms baohanhsp.masp%type, ng baohanhsp.ngaybh%type, 
 cp baohanhsp.chiphibh%type, mt baohanhsp.motaloi%TYPE)
 AS
 BEGIN
    INSERT INTO baohanhsp VALUES (ma, ms, ng, cp, mt);
 END;
 
create or replace PROCEDURE CAPNHAT_BAOHANHSP(ma baohanhsp.mabh%type, ms baohanhsp.masp%type, ng baohanhsp.ngaybh%type, 
cp baohanhsp.chiphibh%type, mt baohanhsp.motaloi%TYPE)
 AS
 BEGIN
    UPDATE baohanhsp SET  masp= ms, ngaybh=ng, chiphibh=cp, motaloi=mt
    where mabh=ma; 
END;

create or replace PROCEDURE XOA_BAOHANHSP(ma baohanhsp.mabh%type)
 AS
 BEGIN
    DELETE FROM baohanhsp WHERE mabh= ma;
 END;

--THÊM, XÓA, C?P NH?T KHÁCH HÀNG
 create or replace PROCEDURE THEM_KHACHHANG(ma khachhang.makh%type, ten khachhang.tenkh%type, dc khachhang.diachi%type, 
cmnd khachhang.cmnd%type, em khachhang.email%type, sd khachhang.sdt%type)
 AS
 BEGIN
    INSERT INTO khachhang VALUES (ma, ten, dc, cmnd, em, sd);
 END;

create or replace PROCEDURE CAPNHAT_KHACHHANG(ma khachhang.makh%type, ten khachhang.tenkh%type, dc khachhang.diachi%type, 
cm_nd khachhang.cmnd%type,
em khachhang.email%type, sd khachhang.sdt%type)
 AS
 BEGIN
    UPDATE khachhang SET tenkh=ten, diachi= dc, cmnd=cm_nd, email=em, sdt=sd
    where makh = ma; 
 END;
  
 create or replace PROCEDURE XOA_KHACHHANG(ma khachhang.makh%type)
 AS
 BEGIN
    DELETE FROM KHACHHANG WHERE makh= ma;
 END;

--THÊM, XÓA, C?P NH?T KHUY?N MÃI
 create or replace PROCEDURE THEM_KhuyenMai(ma khuyenmai.makm%TYPE,ten khuyenmai.tenkm%type, bd khuyenmai.ngaybd%TYPE,
 kt khuyenmai.ngaykt%TYPE, pt khuyenmai.phantramkm%TYPE)
as
BEGIN
    INSERT INTO KHUYENMAI VALUES (ma,ten,bd,kt,pt);
END;

 create or replace PROCEDURE CAPNHAT_KhuyenMai(ma khuyenmai.makm%TYPE,ten khuyenmai.tenkm%type, bd khuyenmai.ngaybd%TYPE,
 kt khuyenmai.ngaykt%TYPE, pt khuyenmai.phantramkm%TYPE)
as
BEGIN
    UPDATE khuyenmai SET tenkm= ten, ngaybd=bd, ngaykt=kt, phantramkm=pt
    WHERE makm=ma;
END;
 
 create or replace PROCEDURE XOA_KHUYENMAI(ma khuyenmai.makm%TYPE)
AS
BEGIN
    DELETE FROM KHUYENMAI WHERE makm=ma;
END;

--THÊM, XÓA, C?P NH?T NHÀ CUNG C?P
create or replace PROCEDURE THEM_NHACUNGCAP(ma_ncc nhacungcap.mancc%TYPE, ten_ncc nhacungcap.tenncc%TYPE, 
dc nhacungcap.diachi%TYPE, email nhacungcap.email%TYPe, sd nhacungcap.sdt%TYPE)
As
BEGIN
    INSERT INTO nhacungcap VALUES (ma_ncc,ten_ncc,dc,email,sd);
END;

create or replace PROCEDURE CAPNHAT_NHACUNGCAP(ma_ncc nhacungcap.mancc%TYPE, ten_ncc nhacungcap.tenncc%TYPE, 
dc nhacungcap.diachi%TYPE, email nhacungcap.email%TYPe, sd nhacungcap.sdt%TYPE)
As
BEGIN
    UPDATE nhacungcap SET MANCC=ma_ncc, TENNCC=ten_ncc, DIACHI =dc, EMAIL= email, sdt= sd
    where mancc=ma_ncc;
END;

create or replace PROCEDURE XOA_NHACUNGCAP(ma_ncc nhacungcap.mancc%TYPE)
AS
BEGIN
    DELETE FROM NHACUNGCAP WHERE mancc=ma_ncc;
END;

--THÊM, XÓA C?P NH?T NHÂN VIÊN
create or replace PROCEDURE THEM_NHAVIEN(ma_nv nhanvien.manv%TYPE, mp nhanvien.mapb%TYPE,ht nhanvien.hoten%TYPE, gt nhanvien.gioitinh%TYPE,
cmnd nhanvien.cmnd%TYPE, dc nhanvien.diachi%TYPE, email nhanvien.email%TYPE, sd nhanvien.sdt%TYPE, sn nhanvien.songaylam%TYPE)
AS
BEGIN
    INSERT INTO NHANVIEN VALUES (ma_nv,ht,gt,cmnd,dc,email,sd,sn,mp);
END;

create or replace PROCEDURE CAPNHAT_NHAVIEN(ma_nv nhanvien.manv%TYPE, mp nhanvien.mapb%TYPE,ht nhanvien.hoten%TYPE, gt nhanvien.gioitinh%TYPE,
cmnd nhanvien.cmnd%TYPE, dc nhanvien.diachi%TYPE, email nhanvien.email%TYPE, sd nhanvien.sdt%TYPE, sn nhanvien.songaylam%TYPE)
AS
BEGIN
    UPDATE NHANVIEN SET MAPB=mp,HOTEN=ht,GIOITINH=gt,CMND=cmnd,DIACHI=dc,EMAIL=email,SDT=sd,songaylam=sn
    WHERE MANV=ma_nv;
END;

create or replace PROCEDURE XOA_NHANVIEN(ma_nv nhanvien.manv%TYPE)
AS
BEGIN
    DELETE FROM NHANVIEN WHERE MANV=ma_nv;
END;

--THÊM, XÓA, C?P NH?T PHI?U B?O HÀNH
create or replace PROCEDURE THEM_PHIEUBAOHANH(ma phieubaohanh.mapbh%TYPE, bd phieubaohanh.ngaybatdau%TYPE, 
hh phieubaohanh.ngayhethan%TYPE)
as
BEGIN
    INSERT INTO PHIEUBAOHANH VALUES (ma,BD,HH);
END;

create or replace PROCEDURE CAPNHAT_PHIEUBAOHANH(ma phieubaohanh.mapbh%TYPE, bd phieubaohanh.ngaybatdau%TYPE, 
hh phieubaohanh.ngayhethan%TYPE)
as
BEGIN
    UPDATE PHIEUBAOHANH SET ngaybatdau=bd, ngayhethan=hh
    WHERE mapbh=ma;
END;

create or replace PROCEDURE XOA_PHIEUBAOHANH(ma phieubaohanh.mapbh%TYPE)
as
BEGIN
DELETE FROM phieubaohanh WHERE mapbh=MA;
END;

--THÊM, XÓA, C?P NH?T PHÒNG BAN
create or replace PROCEDURE THEM_PHONGBAN(ma_PB phongban.mapb%TYPE, ten phongban.tenpb%type, sl phongban.soluongnv%type, 
trg phongban.truongpb%type)
AS
BEGIN
    insert into phongban values(ma_PB,ten,sl,trg);
END;

create or replace PROCEDURE CAPNHAT_PHONGBAN(ma_PB phongban.mapb%TYPE, ten phongban.tenpb%type, sl phongban.soluongnv%type, 
trg phongban.truongpb%type)
AS
BEGIN
    UPDATE PHONGBAN SET tenpb=ten,soluongnv=sl, truongpb=trg
    where mapb= ma_pb;
END;

create or replace PROCEDURE XOA_PHONGBAN(ma_PB phongban.mapb%TYPE)
AS
BEGIN
    DELETE FROM PHONGBAN WHERE MAPB=ma_PB;
END;

--THÊM, XÓA, C?P NH?T S?N PH?M
 create or replace PROCEDURE them_sanpham(ma_sp SANPHAM.MaSP%TYPE,ma_km SANPHAM.MaKM%TYPE,ma_ncc SANPHAM.MANCC%TYPE,
            tensp SANPHAM.TenSP%TYPE,mausac SANPHAM.MAUSAC%TYPE,dongia SANPHAM.DonGia%TYPE,soluong SANPHAM.SoLuong%TYPE)
AS
BEGIN
        INSERT INTO SANPHAM (MaSP,MaKM,MaNCC,TenSP,MauSac,DonGia,SoLuong) VALUES (ma_sp,ma_km,ma_ncc,tensp,mausac,dongia,soluong);
        DBMS_OUTPUT.PUT_LINE('Them thanh cong');
END;

create or replace PROCEDURE CAPNHAT_SANPHAM(ma sanpham.masp%type, mkm sanpham.makm%type, mncc sanpham.mancc%type, 
ten sanpham.tensp%type, mau sanpham.mausac%type, dg sanpham.dongia%type, sl sanpham.soluong%type)
 AS
 BEGIN
    update sanpham set  makm=mkm, mancc=mncc, tensp=ten, mausac=mau, dongia=dg, soluong=sl
    where masp=ma;
 END;
 
 create or replace PROCEDURE xoa_sanpham(ma_sp sanpham.masp%type)
AS
BEGIN
    DELETE FROM SANPHAM WHERE MASP =ma_sp;
END;

--THÊM CTHD_BANSP
 create or replace PROCEDURE THEM_CTHD_BANSP(so cthd_bansp.sohd%type, ms CTHD_BANSP.masp%type, sl cthd_bansp.soluong%TYPE)
 AS
 BEGIN
    INSERT INTO CTHD_BANSP VALUES (so, ms, sl);
 END;
 
 -- THÊM HÓA ??N BÁN S?N PH?M
 create or replace PROCEDURE THEM_HD_BANSP(so cthd_bansp.sohd%type, mk hd_bansp.makh%type, mp hd_bansp.mapbh%TYPE, 
 mn hd_bansp.manv%TYPE, ng hd_bansp.ngaylaphd%TYPE,tg hd_bansp.trigia%TYPE)
 AS
 BEGIN
    INSERT INTO HD_BANSP VALUES (so, mk, mp,mn,ng,tg);
 END;
 
 