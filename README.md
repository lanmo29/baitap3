# baitap3
Hoàn thành cài đặt ubuntu và docker

em sử dụng phương án enable wsl: cài đặt ubuntu

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/733fdc28-995b-4fe1-bb0e-16a4c5960145" />

Hoàn thành chạy trương trình lần đầu và không còn lỗi cổng 

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4ebdc6c3-ce5c-4d25-9785-50357d25974b" />

Bắt đầu thiết lập nodered 

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/3b2e5a46-a89d-4b21-84d9-955de60c416b" />

Tạo API Tokens

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/2aa1b450-dfdf-4d47-91ce-a6874fdbb01f" />

Đã hoàn thiện cấu hình node-red 

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/e8984b05-a8fb-4bb8-a4d6-2763fb74a23e" />

5 giây sẽ gửi cập nhật dữ liệu 1 lần

<img width="309" height="764" alt="image" src="https://github.com/user-attachments/assets/7f20e817-ea0f-41d3-a6b3-4aa018bb97a4" />

Test API có dạng như sau 

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/110e8cd7-3e3b-469e-858c-4fd60f87714c" />

phpMyAdmin

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/60d27d72-cdd1-42fb-98f6-faa64ce5c9db" />

Kết Quả hiển thị lên Wed

5s sẽ cập nhật dữ liệu một lần

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a077c074-eb4e-4f92-a853-bba3304819c1" />

Cập nhật nodered mới 

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/343439e0-1298-4220-95d6-64a191851936" />

Truy vấn dữ liệu trên InfluxDB UI

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/749e9f56-ff1c-48d6-8dfa-bfef9e6cce04" />

Kết Luận : 

Qua quá trình thực hiện dự án này, em đã có cơ hội áp dụng và hiểu sâu hơn về cách xây dựng một hệ thống IoT và lập trình Wed giám sát dữ liệu cảm biến, sử dụng Node-RED làm trung tâm, kết hợp MariaDB, InfluxDB và Grafana. 

Ban đầu, em gặp không ít khó khăn trong việc cài đặt môi trường Linux qua WSL, cấu hình Docker Compose để chạy các container, và debug lỗi kết nối database như "permission denied" hay "port allocated". Qua việc tra cứu tài liệu,AI ( ChatGPT, GrokAI và thử nghiệm, em đã học được cách quản lý quyền file trên Linux, sử dụng sudo để xóa volume Docker, và cấu hình network đúng cách để tránh conflict.

Hệ thống hoạt động như một mô hình IoT hoàn chỉnh: Node-RED đóng vai trò gateway, thu thập dữ liệu từ cảm biến (hoặc API online để simulate realtime data như nhiệt độ, độ ẩm). Em hiểu rằng Node-RED rất mạnh ở tính trực quan với flow kéo thả, giúp xử lý dữ liệu dễ dàng – ví dụ, dùng node Function để tiền xử lý, node MariaDB để update giá trị mới nhất vào cơ sở dữ liệu quan hệ (dùng phpMyAdmin để tạo table và quản trị ban đầu), và node InfluxDB để insert lịch sử time-series. InfluxDB nổi bật ở khả năng lưu dữ liệu thời gian, giúp Grafana dễ dàng kết nối và vẽ biểu đồ. Grafana mang lại giá trị lớn ở visualization, với dashboard tùy chỉnh để theo dõi xu hướng, em nhận ra tầm quan trọng của monitoring trong IoT.

Tổng thể, dự án giúp em nắm rõ flow: Thu thập dữ liệu → Lưu trữ (realtime vs historical) → Phân tích và hiển thị. Em học được rằng trong thực tế, cần chú ý quyền access, port management, và scalability (như dùng Docker để deploy nhanh). Bài tập này không chỉ củng cố kỹ năng mà còn giúp tôi thấy rõ lợi ích của open-source tool trong IoT. 

Trong quá trình thực hiện bài tập, em gặp nhiều khó khăn, đặc biệt là ở giai đoạn kết nối và tích hợp các thành phần.
Ban đầu, việc cấu hình Node-RED giao tiếp với MariaDB và InfluxDB gặp lỗi về định dạng dữ liệu (NaN, payload không hợp lệ),
và việc hiển thị dữ liệu trên Grafana cũng bị ảnh hưởng bởi sai sót trong truy vấn Flux.
Thiết lập môi trường Docker và cấp quyền truy cập giữa các container cũng tốn khá nhiều thời gian để khắc phục.
Tuy nhiên, qua quá trình tìm hiểu, thử nghiệm và sửa lỗi, mình đã hiểu rõ hơn về cách hoạt động của từng thành phần trong hệ thống IoT này,
đặc biệt là luồng dữ liệu từ cảm biến → Node-RED → cơ sở dữ liệu → Grafana.

