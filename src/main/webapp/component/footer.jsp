<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ page import="com.db.DBConnect" %> <!-- Import lớp kết nối database -->

</div>

    <footer class="footer">
        <div class="container">
            <div class="row">

                <div class="col-md-6 col-sm-12">
                    <h2>Liên kết hữu ích</h2>
                    <ul class="list-unstyled link-list">
                        <li><a ui-sref="about_us" href="#about_us">Giới Thiệu</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="portfolio" href="#services">Dịch vụ</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="products" href="#logins">Đăng nhập</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="gallery" href="#gallery">Phòng trưng bày</a><i class="fa fa-angle-right"></i>
                        </li>
                        <li><a ui-sref="contact_us" href="#contact_us">Liên hệ cho chúng tôi</a><i
                                class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-12 map-img">
                    <h2>Liên hệ cho chúng tôi</h2>
                    <address class="md-margin-bottom-40">
                    <%
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Kết nối cơ sở dữ liệu (DBConnect là lớp tự tạo để quản lý kết nối)
        //con = DBConnect.getConnection();

        // Thực thi câu truy vấn
        String sql = "SELECT * FROM tblpage WHERE PageType = 'contactus'";
        pstmt = con.prepareStatement(sql);
        rs = pstmt.executeQuery();

        // Lặp qua từng bản ghi
        while (rs.next()) {
            String pageDescription = rs.getString("PageDescription");
            String mobileNumber = rs.getString("MobileNumber");
            String email = rs.getString("Email");
            String openingTime = rs.getString("OpenningTime");
%>
        <address>
            <%= pageDescription %> <br>
            Số điện thoại: <%= mobileNumber %> <br>
            Email: <a href="mailto:<%= email %>" class=""><%= email %></a><br>
            Thời gian: <%= openingTime %>
        </address>
<%
        }
    } catch (Exception e) {
        out.println("Lỗi: " + e.getMessage());
    } finally {
        // Đóng kết nối
        if (rs != null) try { rs.close(); } catch (Exception e) {}
        if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
        if (con != null) try { con.close(); } catch (Exception e) {}
    }
%>
                </div>
            </div>
        </div>


    </footer>
    <div class="copy">
        <div class="container">

            WECARE Hệ thống quản lý bệnh viện


        </div>

    </div>