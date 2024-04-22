# <h1 align="center">Mobile phone sales system<h1>

  
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="">
  </a>

  <h3 align="center">Điện thoại đi động</h3>

  <p align="center">
    Hệ thống quản lý bán hàng điện thoại di động
    <br />
    <a href="https://github.com/TuanUIT237/-Mobile-phone-sales-system"><strong>Khám phá »</strong></a>
    <br />
    <br />
  </p>
</div>

  
  
  <!-- TABLE OF CONTENTS -->
<details>
  <summary>Mục lục</summary>
  <ol>
    <li>
      <a href="#muctieu">Mục tiêu đồ án</a>
    </li>
    <li><a href="#thuvien">Các thư viện</a></li>
    <li>
      <a href="#chucnang">Các chức năng</a>
    </li>
    <li><a href="#yeucau">Yêu cầu hệ thống</a></li>
    <li>
      <a href="#caidat">Cài đặt và sử dụng</a>
      <ul><a href="#setup">Setup môi trường</a></ul>
      <ul><a href="#start">Khởi động dự án</a></ul>
    </li>
    <li><a href="#lienhe">Liên hệ</a></li>
    <li><a href="#banquyen">Bản quyền</a></li>
    <li><a href="#thamkhao">Tài liệu tham khảo</a></li>
  </ol>
</details>
  
  
  <!-- ABOUT THE PROJECT -->
## <h2 id="muctieu">Mục tiêu của đồ án</h2>
Đề ra phương án xây dựng ứng dụng quản lý đòi hỏi các yêu cầu mang tính thuyết phục và chặt chẽ, nêu ra được tính thiết yếu như:
- Quản lý nắm bắt được thông tin khách hàng, nhà cung cấp một cách hiệu quả và nhanh chóng.
- Quản lý thông tin xuất và nhập các sản phẩm mới lên hệ thống mỗi ngày để khách hàng nắm bắt và tham khảo.
- Cập nhật tình hình doanh số mua bán trong cửa hàng và các cửa hàng chung hệ thống.
- Quản lý được số liệu sản phẩm còn/hết trong kho và số liệu thông tin liên quan đến sản phẩm .
- Đơn giản hóa quá trình mua bán sản phẩm online đối với các khách hàng có nhu cầu đặt qua ứng dụng.
- Quản lý được nhu cầu đóng góp ý kiến và phản hồi của khách hàng bằng cách tạo một kênh liên lạc dành riêng cho khách mua hàng
- Kết hợp với các sự kiện ưu đãi khuyến mãi trên ứng dụng giúp khách hàng có thể nắm bắt và hiểu rõ hơn về chương trình được áp dụng vào từng thiết bị sản phẩm.
- Quản lý thông tin bảo hành , giao dịch của khách hàng.
- Quản lý tình hình nhân viên trong công tác làm việc.
- Cập nhật được thông tin sản phẩm cần nhập hàng, tiền hàng nhập sản phẩm.
Với các yêu cầu đề xuất trên là mục tiêu trong phần mềm quản lý đối với cửa hàng bán điện thoại di động. Khi áp dụng vào thực tiễn sẽ giảm bớt tối ưu các phương pháp thủ công và làm hiện đại hơn quá trình mua bán giữa khách hàng và nhà sản xuất. Tiếp cận được khách hàng một cách hiệu quả và không tốn nhiều thời gian chỉ cần truy cập ứng dụng.
  
  
### <h2 id="thuvien">Các thư viện sử dụng</h2>

Hệ thống được xây dựng dựng bởi các công cụ hiện đại:
- [Java Swing](https://netbeans.apache.org/kb/docs/java/quickstart-gui.html)
  
  
# <h2 id="chucnang">Tóm tắt chức năng</h2>
- Quản lý sẽ được cấp mục sau:<br/>
  Thêm, sửa, xóa, tra cứu các mục sau:
  + Quản lý sản phẩm 
  + Quản lý khách hàng
  + Quản lý khà cung cấp
  + Quản lý bán hàng
  + Quản lý khuyến mãi
  + Quản lý bảo hành
  + Quản lý nhân viên
  + Quản lý phòng ban
  + Thông kê doanh thu <br/>
- Thống kê doanh thu:<br/>
  + Xuất thông tin báo cáo theo năm,tháng,ngày<br/>
- Nhân viên sẽ được cấp mục sau:
  + Quản lý sản phẩm (<b>thêm, xoá, sửa, tra cứu</b>)
  + Quản lý khách hàng (<b>thêm, xoá, sửa, tra cứu</b>)
  + Quản lý khà cung cấp (<b>thêm, xoá, sửa, tra cứu</b>)
  + Quản lý bán hàng (<b>thêm, xoá, sửa, tra cứu</b>)
  + Quản lý khuyến mãi (<b>thêm, xoá, sửa, tra cứu</b>)
  + Quản lý bảo hành (<b>thêm, xoá, sửa, tra cứu</b>) <br/>
- Tạo account tương ứng cho quản lý, nhân viên và tự động phân quyền theo các role đã được định sẵn. 
- Xuất file excel cho khách hàng và nhân viên.<br/>

  
  
 # <h2 id="yeucau">Yêu cầu hệ thống:</>
- NetBeans IDE 13 (<b>có thể sử dụng các phiên bản khác</b>)
- Oracle Database 19c (<b>có thể sử dụng các phiên bản khác</b>)
  
  
  
# <h2 id="caidat">Cài đặt và sử dụng</h2>
## <h3 id="setup">Setup môi trường</h3>
1. Trước khi tải và cài đặt NetBeans bạn phải phải cài đặt sẵn JDK trên máy. 
- Link tải [JDK](https://www.oracle.com/java/technologies/downloads/)
2. Tải và cài đặt NetBeans. 
- Link tải [NetBeans](https://netbeans.org/downloads/)
2. Tải và cài đặt Oracle Database software. 
- Link tải [Oracle](www.oracle.com/database/technologies/oracle-database-software-downloads.html)

## <h3 id="start">Khởi động dự án</h3>
Sau khi đã cài đặt được những chương trình trên, ta thực hiện lần lượt các bước sau: <br/>
- Bước 1: Tải File QuanLyCuaHangDTDD.rar về máy sau đó giải nén thư mục.
- Bước 2: Tải file QuanLyCuaHangDTDD.sql. Vào oracle tạo user “c##user10” mật khẩu “userpass”.
- Bước 3: Tạo Connect với user vừa tạo. Sau đó tiến hành chạy file sql trên user vừa tạo.
- Bước 4: Vào Netbeans, chọn File -> Open projects -> đến thư mục mình vừa giải nén mở project.
- Bước 5: Mở folder Source Packages -> View -> click chuột phải ở DoAn.java -> run File.


# <h2 id="thamkhao">Tài liệu tham khảo</h2> 
1. [Tài liệu Oracle của hãng Oracle](https://docs.oracle.com/en/database/oracle/oracle-database/index.html)
2. [Tài liệu về Java, Java Swing](https://docs.oracle.com/javase/tutorial/)
