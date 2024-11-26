# Phần mềm quản lý bệnh viện
## Mô tả
Trong Dự án này, chúng tôi hướng đến giải quyết các vấn đề truyền thống của quản lý bệnh viện. Hệ thống hiện tại cung cấp giải pháp dựa trên giấy tờ để lưu trữ hồ sơ bệnh nhân và nhân viên bệnh viện, nhưng nó gây quá tải cho Bác sĩ và Quản trị viên. Các vấn đề chính là lưu trữ dữ liệu không phù hợp, lãng phí thời gian lưu trữ, truy xuất cũng như bệnh nhân không thể hiểu được đơn thuốc, v.v. Những vấn đề này được giải quyết bằng cách cung cấp một tài khoản người dùng riêng cho bác sĩ và người dùng khác. Giữ dữ liệu của từng bệnh nhân riêng biệt và theo dõi các lần khám trước chỉ bằng một cú nhấp chuột.
## Chức năng hiện có
- **Đối với người dùng:**
  - Đăng ký/ Đăng nhập
  - Đặt lịch hẹn với bác sĩ.
  - Xem lịch hẹn và hủy lịch khi cần.
- **Đối với bác sĩ:**
  - Cập nhật hồ sơ cá nhân.
  - Xem tổng số lịch hẹn của bệnh nhân đã đặt với mình.
  - Quản lý lịch hẹn của bệnh nhân (xem, hủy lịch hẹn).
  - Thêm nhận xét về bệnh nhân.
- **Đối với quản trị viên:**
  -	Thêm, chỉnh sửa và xóa bác sĩ.
  -	Quản lý bệnh nhân (xem, xóa bệnh nhân).
  - Quản lý chuyên khoa (thêm chuyên khoa).
  -	Hiển thị số liệu thống kê về bác sĩ, người dùng, bệnh nhân và lịch hẹn.
  - Xem bác sĩ, xem người dùng, bệnh nhân và lịch hẹn.
## Công nghệ sử dụng
- **Ngôn ngữ lập trình**: Java
- **Frontend**: HTML, CSS, JS, Bootstrap, JSP, FontAwsome
- **Backend**: Servlet,JDBC
- **Server**:  Apache Tomcat
- **Cơ sở dữ liệu**: MySQL
- **Công cụ**: Eclipse,MySQL workbench
## Cách cài đặt và sử dụng
1. **Để nhập dự án này vào hệ thống của bạn, trước tiên bạn cần cài đặt các phần mềm dưới đây:**

- Eclipse dành cho Java EE Developers và Tomcat server. 
- MySQL Workbench.
2. **Sau đó lấy mã từ kho lưu trữ GitHub này trên hệ thống của bạn. Bạn có thể sao chép kho lưu trữ này hoặc tải xuống dưới dạng tệp zip.**
- link github: https://github.com/vannam17/Hospital_management.git
3. **Cài đặt cơ sở dữ liệu:** Tạo cơ sở dữ liệu trong MySQL và nhập các bảng cần thiết từ các file SQL có sẵn trong thư mục database
4. **Thiết lập kết nội cơ sở dữ liệu :**  Truy cập vào đường dẫn để thay đổi username và password phù hợp theo máy của bạn
  \hospital\src\main\java\com\db\DBConnect.java
5. **Chạy ứng dụng:** Sử dụng IDE (như IntelliJ IDEA hoặc Eclipse) để mở dự án và chạy ứng dụng web này trên máy chủ Tomcat của mình - phiên bản 9.0 là tốt nhất.

