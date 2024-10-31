# Hospital_management

Mỗi người tạo một branch của tên mình. Sau khi codes xong push lên nhánh bạn, lên GitHub để tạo một pull request.

**Cách tạo pull request**:
1. Vào **pull request** > **new pull request**.
2. Chọn nhánh > **create pull request**.
3. Tại đây, viết những chức năng hay những thay đổi và chọn **create pull request**.

**Lưu ý**: Không đẩy code lên nhánh chính (main/master), mà đẩy theo cấp của nhánh. Mỗi ngày, bạn nên pull code ở nhánh chính và thực hiện fetch trước mỗi lần pull. Bạn phải commit trước mỗi lần push code lên.

**Ví dụ**:
```bash
git checkout master
git fetch  
git pull origin master
