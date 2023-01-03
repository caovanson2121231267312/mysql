# DATABASE

# DBMS

* DBMS là viết tắt của Database Management System, dịch sang tiếng Việt là Hệ quản trị Cơ sở dữ liệu. DBMS là phần mềm được thiết kế để có thể xác định, tiến hành các thao tác, truy xuất và quản lý dữ liệu trong Cơ sở dữ liệu. DBMS thường có khả năng tự thao tác với dữ liệu, định dạng dữ liệu, tên trường, cấu trúc bản ghi và cấu trúc tệp. Nó cũng xác định các quy tắc để xác nhận và thao tác với dữ liệu.

* Với DBMS, người dùng có thể thao tác sửa/xóa/thêm dữ liệu mà không còn cần các chương trình khung. Các ngôn ngữ lập trình truy vấn như SQL thường đi kèm với DBMS để lập trình viên dễ dàng tương tác với dữ liệu họ cần.

* **Một vài DBMS phổ biến**:

    * MySQL
    * SQL Server
    * Oracle
    * FoxPro

# SQL/NoSQL

## SQL

* SQL chính là viết tắt của Structured Query language, là ngôn ngữ chuẩn để xử lý Cơ sở dữ liệu quan hệ. Một cơ sở dữ liệu quan hệ xác định các mối quan hệ dưới dạng các bảng.

* Lập trình SQL có thể được sử dụng hiệu quả để chèn, tìm kiếm, cập nhật, xóa các bản ghi cơ sở dữ liệu.

* Điều đó không có nghĩa là SQL không thể làm được gì ngoài việc đó. Nó có thể làm rất nhiều thứ bao gồm, nhưng không giới hạn, tối ưu hóa và duy trì cơ sở dữ liệu.

* Các cơ sở dữ liệu quan hệ như Cơ sở dữ liệu MySQL, Oracle, MS SQL Server, Sybase, ... sử dụng SQL.

## NoSQL

* NoSQL là một DMS không quan hệ, không yêu cầu một lược đồ cố định, tránh các phép nối, và dễ dàng mở rộng. Cơ sở dữ liệu NoSQL được sử dụng cho các kho dữ liệu phân tán với nhu cầu lưu trữ dữ liệu khổng lồ.

* Dễ sử dụng, hiệu suất cao và công cụ linh hoạt.

* Biểu thị dữ liệu dưới dạng biểu đồ, các cặp khóa-giá trị và nhiều hơn thế.

* Không có ngôn ngữ Query


# datatype trong mysql

## Kiểu dữ liệu số nguyên

### TINYINT
* Độ dài (số byte): 1
* Giá trị lưu trữ (có dấu): -128 - 127
* Giá trị lưu trữ (không dấu): 0 - 255

### SMALLINT
* Độ dài (số byte): 2
* Giá trị lưu trữ (có dấu): -32768 - 32767
* Giá trị lưu trữ (không dấu): 0 - 65535

### MEDIUMINT
* Độ dài (số byte): 3
* Giá trị lưu trữ (có dấu): -8388608 - 8388607
* Giá trị lưu trữ (không dấu): 0 - 16777215

### INT
* Độ dài (số byte): 4
* Giá trị lưu trữ (có dấu): -2147483648 - 2147483647
* Giá trị lưu trữ (không dấu): 0 - 4294967295

### BIGINT
* Độ dài (số byte): 8
* Giá trị lưu trữ (có dấu): -9223372036854775808 - 92233720368 54775807
* Giá trị lưu trữ (không dấu): 0 - 184467440737 09551615

## Kiểu dữ liệu số thực

* (M) là độ dài phần nguyên
* (D) là độ dài phần thập phân

### FLOAT(M,D)

* Độ dài (số byte): 4
* Giá trị lưu trữ (có dấu): -3.402823466E+38 - -1.175494351E-38
* Giá trị lưu trữ (không dấu): 1.175494351E-38 - 3.402823466E+38

### DOUBLE(M,D)

* Độ dài (số byte): 8
* Giá trị lưu trữ (có dấu): -1.7976931348623157E+ 308 - -2.2250738585072014E- 308
* Giá trị lưu trữ (không dấu): 0 and 2.2250738585072014E- 308 - 1.7976931348623157E+ 308

## DECIMAL và NUMERIC

* DECIMAL và NUMERIC lưu trữ chính xác các dữ liệu số, định dạng nhị phân. Kiểu dữ liệu này thường được áp dụng với dữ liệu tiền tệ, đơn giá.

## Kiểu dữ liệu Date and Time

### Date

* Sử dụng khi bạn muốn lưu trữ chỉ thông tin ngày tháng.

* Định dạng hiển thị: YYYY-MM-DD

### DateTime

* Sử dụng khi bạn cần giá trị lưu trữ cả hai thông tin ngày tháng và thời gian.

* Định dạng hiển thị: YYYY-MM-DD HH:MM:SS

### TIMESTAMP

* Sử dụng khi bạn cần giá trị lưu trữ cả hai thông tin ngày tháng và thời gian.

* Định dạng hiển thị: YYYY-MM-DD HH:MM:SS

### YEAR

* Định dạng năm dưới dạng bốn chữ số. Các giá trị được phép ở định dạng bốn chữ số là từ 1901 đến 2155 và 0000.

## Kiểu chuỗi

### CHAR

* Định dạng hiển thị: Khoảng trắng phía trước (Trailing spaces) được loại bỏ
* Phạm vi các ký tự: '0' to '255'

### VARCHAR

* Định dạng hiển thị: Giống như data được nhập và lưu trữ
* Phạm vi các ký tự: '0' to '65535'

### BINARY

* Định dạng hiển thị: Chứa các chuỗi nhị phân (Binary Strings)
* Phạm vi các ký tự: '0' to '255'

### VARBINARY

* Định dạng hiển thị: Chứa các chuỗi nhị phân (Binary Strings)
* Phạm vi các ký tự: '0' to '65535'

### BLOB

* Là một đối tượng nhị phân lớn (Binary Large OBject) có thể chứa một lượng lớn dữ liệu. 
* **Có 4 loại BLOB**:

    * TINYBLOB (Chiều dài tối đa là 255 ký tự)
    * BLOB
    * MEDIUMBLOB (Chiều dài tối đa là 16777215 ký tự)
    * LONGBLOB (Chiều dài tối đa là 4294967295 ký tự)

### TEXT

* Lưu trữ giá trị được coi như một chuỗi các ký tự có mã hóa (character set). 
* **Có 4 loại TEXT**:

    * TINYTEXT (Chiều dài tối đa là 255 ký tự)
    * TEXT
    * MEDIUMTEXT (Chiều dài tối đa là 16777215 ký tự)
    * LONGTEXT (Chiều dài tối đa là 4294967295 ký tự)

### ENUM

* Khi định nghĩa một trường kiểu này, tức là, ta đã chỉ ra một danh sách các đối tượng mà trường phải nhận (có thể là Null).

* Ví dụ, nếu ta muốn một trường nào đó chỉ nhận một trong các giá trị "A" hoặc "B" hoặc "C" thì ta phải định nghĩa kiểu ENUM cho nó như sau: ENUM ('A', 'B', 'C'). Và chỉ có các giá trị này (hoặc NULL) có thể xuất hiện trong trường đó.

# Hàm tổng hợp dữ liệu – Aggregate Functions trong MYSQL

## SUM

* SUM trong MySQL được sử dụng để tìm tổng của một trường trong các bản ghi trong bảng.

* Nếu muốn tính tổng của tất cả điểm trong cột diem, sử dụng lệnh sau:

```sql
SELECT SUM(diem) FROM sinh_vien
```

## MAX

* Hàm MySQL MAX được sử dụng để tìm ra bản ghi có giá trị lớn nhất trong một bộ bản ghi. Muốn lấy giá trị lớn nhất trong cột diem, sử dụng lệnh sau:

```sql
SELECT MAX(diem) FROM sinh_vien;
```

## MIN

* Hàm MIN trong MySQL được sử dụng để tìm bản ghi với giá trị nhỏ nhất trong một tập hợp bản ghi.

* Muốn lấy giá trị nhỏ nhất của cột diem, sử dụng lệnh sau:

```sql
SELECT MIN(diem) FROM sinh_vien;
```

## AVG

* Hàm AVG trong MySQL được sử dụng để tìm giá trị trung bình của một trường trong các bản ghi đa dạng. Muốn tính trung bình của tất cả các điểm trong cột diem sử dụng lệnh sau:

```sql
SELECT AVG(diem) FROM sinh_vien;
```

## COUNT
* Hàm COUNT trong MySQL là hàm đơn giản nhất và rất có ích trong việc đếm số bản ghi, được mong chờ để trả về từ một lệnh SELECT.

```sql
SELECT COUNT(*) FROM sinh_vien;
```

# Truy vấn con (Subquery)

Truy vấn con hay còn gọi là Sub Query, đây là một cách xử lý dữ liệu của ngôn ngữ T-SQL nói chung và MySQL nói riêng. Bản chất sub query trong MySQL là trả về một bảng ảo, sau đó sử dụng bảng ảo đó để thực hiện tiếp các câu lệnh khác.

Lênh sub query sẽ có tốc độ chậm hơn bình thường, bởi bản chất nó là tạo ra table ảo nên tốn nhiều tài nguyên lưu trữ hơn.

```sql
SELECT * FROM users WHERE code IN 
(SELECT code FROM offices WHERE country = 'USA');
```

# Join

* Lệnh join giúp lấy dữ liệu từ hai hoặc nhiều bảng cơ sở dữ liệu. Các bảng có liên kết với nhau bằng cách sử dụng khóa chính và khóa ngoài.

* Các loại Join trong mysql

    * **Cross Join**: Tham Gia Chéo là một hình thức Tham Gia đơn giản nhất nó khớp với từng hàng từ một bảng cơ sở dữ liệu với tất cả các hàng khác. Nói cách khác, nó cung cấp cho chúng ta sự kết hợp của từng hàng của bảng đầu tiên với tất cả các bản ghi trong bảng thứ hai.

    * **INNER JOIN**: Lệnh Join được sử dụng để kết hợp các hàng từ cả hai bảng thỏa mãn điều kiện đã cho.

    * **Left Join**: Cho kết quả tất cả các hàng từ bảng bên trái ngay cả khi không tìm thấy hàng phù hợp trong bảng bên phải. Trường hợp không tìm thấy kết quả phù hợp trong bảng bên phải, kết quả sẽ là Null.

    * **Right Join**: Right Join là lệnh Join cho tất cả kết quả các cột từ bảng bên phải ngay cả khi không tìm thấy hàng phù hợp trong bảng bên trái. Trường hợp không tìm thấy kết quả phù hợp trong bảng bên trái, kết quả là Null

# Index 

* Chỉ mục (Index) là bảng tra cứu đặc biệt mà Database Search Engine có thể sử dụng để tăng nhanh thời gian và hiệu suất thu thập dữ liệu. Hiểu đơn giản, một chỉ mục là một con trỏ tới dữ liệu trong một bảng. Một chỉ mục trong một Database là tương tự như một chỉ mục trong Mục lục của cuốn sách.

* **Ví dụ**, nếu bạn muốn tham chiếu tất cả các trang trong một cuốn sách về một chủ đề nào đó, đầu tiên bạn nghĩ ngay đến mục lục của nó, mà liệt kê tất cả các chương, chủ đề theo thứ tự và sau đó được tham chiếu tới một hoặc nhiều trang cụ thể. Khi đã có mục lục của cuốn sách, việc tìm kiếm trang sách đó sẽ nhanh chóng và đỡ tốn công hơn rất nhiều so với việc bạn phải lật từng trang.

* Bất cứ khi nào bạn thay đổi cấu trúc bảng dữ liệu bạn đều cần Add Index lại, giống như khi bạn thay đổi nội dung quyển sách, bạn cần phải làm lại mục lục. Vậy hãy cân nhắc, nếu Database của bạn sử dụng INSERT hay UPDATE nhiều hơn là SELECT thì Index chỉ làm chậm thêm mà thôi.

* Thêm index vào cột

```sql
ALTER TABLE tbl_name ADD INDEX index_name (column 1, column 2,..)
```

* Các lưu ý khi dùng chỉ mục

    * Các chỉ mục không nên được sử dụng trong các bảng nhỏ.
    * Bảng mà thường xuyên có các hoạt động update, insert.
    * Các chỉ mục không nên được sử dụng trên các cột mà chứa một số lượng lớn giá trị NULL.
    * Không nên dùng chỉ mục trên các cột mà thường xuyên bị sửa đổi.

# Transaction trong MySQL

* Transaction là một tiến trình xử lý có xác định điểm đầu và điểm cuối, được chia nhỏ thành các operation (phép thực thi) , tiến trình được thực thi một cách tuần tự và độc lập các operation đó theo nguyên tắc hoặc tất cả đều thành công hoặc một operation thất bại thì toàn bộ tiến trình thất bại. Nếu việc thực thi một operation nào đó bị fail đồng nghĩa với việc dữ liệu phải rollback về trạng thái ban đầu.

* Đây là những tiêu chí liên quan chặt chẽ mà một hệ thống xử lý transaction hoạt động tốt phải đáp ứng:

    * Atomicity: Một transaction phải hoạt động như một đơn vị công việc không thể tách rời để toàn bộ transaction được áp dụng hoặc khôi phục.

    * Consistency: Cơ sở dữ liệu phải luôn luôn chuyển từ trạng thái nhất quán sang trạng thái tiếp theo.

    * Isolation: Kết quả của một transaction thường vô hình với các transaction khác cho đến khi các transaction hoàn tất.

    * Durability: Sau khi commited, một transaction sẽ thay đổi vĩnh viễn.

* Khi một Transaction được hoàn thành, lệnh COMMIT nên được thông báo để mà tất cả thay đổi tới các bảng liên quan sẽ có hiệu quả.

* Nếu một lỗi xuất hiện, một lệnh ROLLBACK nên được thông báo để trả bảng đã tham chiếu trong Transaction về trạng thái trước đó.

# SQL Injection

* **SQL Injection** là một kỹ thuật lợi dụng những lỗ hổng về câu truy vấn của các ứng dụng. Được thực hiện bằng cách chèn thêm một đoạn SQL để làm sai lệnh đi câu truy vấn ban đầu, từ đó có thể khai thác dữ liệu từ database. SQL injection có thể cho phép những kẻ tấn công thực hiện các thao tác như một người quản trị web, trên cơ sở dữ liệu của ứng dụng.

* Sự nguy hiểm của SQL Injection

    * Hack tài khoản cá nhân.
    * Ăn cắp hoặc sao chép dữ liệu của trang web hoặc hệ thống.
    * Thay đổi dữ liệu nhạy cảm của hệ thống.
    * Xóa dữ liệu nhạy cảm và quan trọng của hệ thống.
    * Người dùng có thể đăng nhập vào ứng dụng với tư cách người dùng khác, ngay cả với tư cách quản trị viên.
    * Người dùng có thể xem thông tin cá nhân thuộc về những người dùng khác, ví dụ chi tiết hồ sơ của người dùng khác, chi tiết giao dịch của họ,…
    * Người dùng có thể sửa đổi cấu trúc của cơ sở dữ liệu, thậm chí xóa các bảng trong cơ sở dữ liệu ứng dụng.
    * Người dùng có thể kiểm soát máy chủ cơ sở dữ liệu và thực thi lệnh theo ý muốn.