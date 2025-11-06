# 🧩 BÀI TẬP 3  
**Nguyễn Hùng Lân – K215480106030**

---

## 🎯 Mục tiêu  
Hoàn thành cài đặt **Ubuntu** và **Docker**, triển khai hệ thống **IoT giám sát dữ liệu cảm biến** với các thành phần:  
- Node-RED  
- MariaDB (quản lý qua phpMyAdmin)  
- InfluxDB  
- Grafana  

---

## ⚙️ Quá trình thực hiện  

### 1️⃣ Cài đặt môi trường  
Sử dụng **phương án enable WSL** để cài đặt **Ubuntu** và **Docker**.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/733fdc28-995b-4fe1-bb0e-16a4c5960145" />
</p>

---

### 2️⃣ Cài đặt và chạy các thành phần **Node-RED**, **MariaDB (quản lý qua phpMyAdmin)**, **InfluxDB**, **Grafana**.
Hoàn thành cài đặt, chạy chương trình lần đầu **không còn lỗi cổng**.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4ebdc6c3-ce5c-4d25-9785-50357d25974b" />
</p>

---

### 3️⃣ Thiết lập Node-RED  
Bắt đầu cấu hình Node-RED.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/3b2e5a46-a89d-4b21-84d9-955de60c416b" />
</p>

Tạo **API Tokens**.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/2aa1b450-dfdf-4d47-91ce-a6874fdbb01f" />
</p>

Hoàn thiện cấu hình Node-RED.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/e8984b05-a8fb-4bb8-a4d6-2763fb74a23e" />
</p>

Hệ thống gửi **cập nhật dữ liệu mỗi 5 giây**.  
<p align="center">
<img width="309" height="764" alt="image" src="https://github.com/user-attachments/assets/7f20e817-ea0f-41d3-a6b3-4aa018bb97a4" />
</p>

---

### 4️⃣ Kiểm tra API  
API hoạt động ổn định.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/110e8cd7-3e3b-469e-858c-4fd60f87714c" />
</p>

---

### 5️⃣ Cấu hình phpMyAdmin  
Truy cập và quản trị cơ sở dữ liệu.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/60d27d72-cdd1-42fb-98f6-faa64ce5c9db" />
</p>

---

### 6️⃣ Giao diện Web hiển thị dữ liệu  
Dữ liệu **tự động cập nhật 5 giây/lần**.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a077c074-eb4e-4f92-a853-bba3304819c1" />
</p>

---

### 7️⃣ Cấu hình Node-RED tối ưu mới  
Hoàn thiện phiên bản **tối ưu hơn** cho hệ thống vì bắt đầu xuất hiện lỗi nên thêm một số node và sửa một chút cấu hình.  
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/343439e0-1298-4220-95d6-64a191851936" />
</p>

---

### 8️⃣ Truy vấn dữ liệu trên InfluxDB UI  
InfluxDB và Grafana tồn đọng quá nhiều lỗi như (chưa đúng format đữ liệu nên grafana chưa để thể đọc và vẽ biểu đồ mặc dù dữ liệu từ nodered đã đúng định dạng) nên em chưa thể hoàn thiện được em nghi vấn là do lỗi cấu hình từ node Ghi vào influxDB nhưng em chưa tìm đc hướng fix em đã sửa đi sửa lại khá nhiều lần dẫn đến lỗi chồng lỗi và phải làm lại từ đầu dự án khá nhiều lần và đây là dự án có thể nói là ổn định trong các lần làm từ lúc được giao dự án đến thời điểm bây giờ.

Định dạng dữ liệu từ cảm biến (được mô phỏng bởi nodered) có dạng như sau: 

{
  "temperature": 28.6,
  "humidity": 65.3
}
trong đó gồm có temperature: Nhiệt độ và humidity: Độ ẩm
<p align="center">
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/749e9f56-ff1c-48d6-8dfa-bfef9e6cce04" />
</p>

---

9️⃣ Trực quan hóa dữ liệu bằng Grafana

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/075b1469-362f-426c-98d6-8f673760b5b5" />

## 🧠 Kết luận  

Qua quá trình thực hiện dự án này, em đã có cơ hội **hiểu sâu hơn về cách xây dựng một hệ thống IoT** và **lập trình web giám sát dữ liệu cảm biến**, sử dụng **Node-RED** làm trung tâm, kết hợp **MariaDB**, **InfluxDB** và **Grafana**.

Ban đầu, em gặp nhiều khó khăn trong việc cài đặt môi trường Linux qua WSL, cấu hình Docker Compose để chạy các container, và xử lý lỗi kết nối database như *permission denied* hay *port allocated*.  
Nhờ việc tra cứu tài liệu, sử dụng **AI (ChatGPT, GrokAI)** và thử nghiệm thực tế, em đã học được cách:  
- Quản lý quyền truy cập file trên Linux  
- Xóa volume Docker bằng `sudo`  
- Cấu hình network đúng cách để tránh xung đột  

Hệ thống hoạt động như một **mô hình IoT hoàn chỉnh**:  
- **Node-RED**: Thu thập dữ liệu từ cảm biến (hoặc API online)  
- **MariaDB**: Lưu dữ liệu quan hệ, quản lý bằng phpMyAdmin  
- **InfluxDB**: Lưu dữ liệu thời gian thực (time-series)  
- **Grafana**: Trực quan hóa dữ liệu qua dashboard  

Em nhận thấy tầm quan trọng của **monitoring** và **flow dữ liệu** trong IoT:  
> Thu thập dữ liệu → Lưu trữ (Realtime & Historical) → Phân tích → Hiển thị trực quan  

Dự án giúp em củng cố kỹ năng kỹ thuật, hiểu rõ hơn về **Docker**, **cơ sở dữ liệu**, và **các công cụ mã nguồn mở** phục vụ triển khai hệ thống IoT.

---

## ⚡ Khó khăn gặp phải  
Trong quá trình thực hiện:  
- Lỗi định dạng dữ liệu (NaN, payload không hợp lệ) khi kết nối Node-RED với MariaDB/InfluxDB.  
- Sai cú pháp truy vấn Flux trong Grafana.  
- Mất nhiều thời gian để cấu hình Docker và cấp quyền giữa các container.
- Và còn rất nhiều lỗi khác nữa ......  

Tuy nhiên, qua việc **thử nghiệm – sửa lỗi – tìm hiểu**, em đã hiểu rõ hơn về **cách dữ liệu luân chuyển** trong hệ thống:  
**Cảm biến (mô phỏng bằng nodered) → Node-RED → CSDL → Grafana**.

---

📌 *Bài tập này giúp em rèn luyện kỹ năng thực hành, hiểu rõ quy trình tích hợp hệ thống và tầm quan trọng của việc quản lý môi trường phát triển với Docker, bài tập của em còn rất nhiều lỗi mà e chưa hoàn thiện được đặc biệt là **InfluxDB** và **Grafana**, em sẽ cố gắng tìm hiểu và fix lỗi để hoàn thiện bài một cách triệt để và hoàn hảo hơn em cảm ơn thầy đã xem và nhận sét bài tập về nhà lần này của em.*
