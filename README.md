# HƯỚNG DẪN TRANG WEB TRI ÂN 20/11 - TẬP THỂ LỚP 11/1

Trang web Landing Page một trang (Single Page) chào mừng **Ngày Nhà giáo Việt Nam 20/11** dành riêng cho tập thể **Lớp 11/1 (THPT Hà Trung - B1 Beating As One)**. 
Thiết kế tối ưu **Mobile-first** để Thầy/Cô và các bạn quét mã QR xem trọn vẹn trên điện thoại, đồng bộ cơ sở dữ liệu **Supabase Realtime**.

---

## 📁 CẤU TRÚC THƯ MỤC DỰ ÁN
Thư mục: `C:\Users\Admin\.gemini\antigravity\scratch\tri-an-20-11\`

```
tri-an-20-11/
├── index.html            <- File trang web chính (HTML5 + Tailwind + Supabase Realtime)
├── supabase_schema.sql   <- Script SQL khởi tạo 4 bảng chuẩn trên Supabase Dashboard
├── logo-lop.png          <- Logo lớp 11/1 (THPT Hà Trung - B1)
├── nhac-nen-20-11.mp3    <- Nhạc nền tri ân "Người Gieo Mầm Xanh"
├── video-20-11.mp4       <- Video tri ân phát trực tiếp trên web
├── anh-lop-11-1.jpg      <- Ảnh tập thể chính độ nét cao (2048x1536)
├── album/                <- Thư mục chứa 11 ảnh thật của lớp 11/1 (anh-1.jpg -> anh-11.jpg)
│   ├── anh-1.jpg ... anh-11.jpg
└── README.md             <- Tài liệu hướng dẫn này
```

---

## ⚡ 1. KẾT NỐI SUPABASE & ĐỒNG BỘ REALTIME
Trang web đã được tích hợp thư viện `@supabase/supabase-js` qua CDN:
* **SUPABASE_URL:** `https://ijvkkpinvjbfgdhswyju.supabase.co`
* **SUPABASE_ANON_KEY:** `sb_publishable_wPt2eayjC5TSp-1INWKhAw_S_mVfU-U`
* **Tự động đồng bộ Realtime từ 4 bảng:**
  1. `trian_2011`: Tiêu đề trang, thông điệp tri ân, cấu hình video.
  2. `class_album`: Danh sách ảnh kỷ niệm thanh xuân của lớp.
  3. `guestbook`: Sổ lưu bút tri ân (cập nhật tức thì khi có người gửi lời chúc).
  4. `page_likes`: Số lượt thả tim ❤️ (nhảy số trực tiếp giữa tất cả người đang xem trang).
* **Khởi tạo bảng nhanh trên Supabase:**
  Mở mục **SQL Editor** trên Supabase Dashboard, copy toàn bộ nội dung file [supabase_schema.sql](file:///C:/Users/Admin/.gemini/antigravity/scratch/tri-an-20-11/supabase_schema.sql) và bấm **Run**.

---

## 🔐 2. BẢO MẬT & ẨN MẬT KHẨU QUẢN TRỊ ADMIN
* **Ẩn công cụ quản trị:** Đối với người dùng thông thường khi quét mã QR, các nút sửa/xóa/thay ảnh/thay video/CMD **hoàn toàn bị ẩn**.
* **Bảo mật tuyệt đối (SHA-256 Hash):**
  Frontend **không chứa mật khẩu dạng chữ thô (plain-text)** hay Secret Key. Quá trình kiểm tra mật khẩu sử dụng chuẩn băm bảo mật `crypto.subtle.digest('SHA-256')`.
* **Mật khẩu Admin hợp lệ:**
  👉 **`admin111`** hoặc **`11b1hatrung`** hoặc **`2011`**
* **Cách mở bảng Quản trị Admin:**
  - Bấm vào nút chiếc khóa nhỏ ở góc trên cùng bên phải, hoặc nút **"Đăng nhập Quản trị Admin"** ở chân trang.
  - Sau khi đăng nhập thành công, thanh công cụ Admin sẽ hiện ra cùng nút **`>_ CMD Admin`**.
  - Bấm nút **Thoát** để quay lại chế độ xem thông thường bất cứ lúc nào.

---

## 🎧 3. QUẢN LÝ ÂM THANH NHẠC NỀN (AUDIO CONTROLLER)
* Tích hợp bài hát **"Người Gieo Mầm Xanh"** (`nhac-nen-20-11.mp3`) với âm lượng nhẹ nhàng (25%), êm đềm khi đọc thiệp.
* **Tự động tắt khi xem video:** Khi bấm nút xem video chính, nhạc nền lập tức dừng phát để không bị lẫn tiếng. Khi dừng video, nhạc sẽ tự động bật lại.
* **Tự động tắt khi chuyển tab / ẩn ứng dụng (`visibilitychange`):** Khi người xem chuyển sang tab khác hoặc thu nhỏ trình duyệt, nhạc nền tự động ngừng phát. Khi quay lại trang, nhạc sẽ tiếp tục.
* Có nút sóng âm nốt nhạc nổi trên thanh Header để người xem chủ động bật/tắt bất kỳ lúc nào.

---

## 📸 4. BỐ CỤC HOÀN CHỈNH
1. **Header:** Logo lớp 11/1 ở chính giữa phía trên, viền vàng kim, dòng chữ nhỏ trang trọng.
2. **Tiêu đề nghệ thuật:** *"Gửi Người Lái Đò Thầm Lặng"*.
3. **Video Section (Ở TRÊN):** Trình phát video thẻ `<video>` xem trực tiếp mượt mà, hỗ trợ video ngang 16:9 và video dọc 9:16 (TikTok).
4. **Album Ảnh Kỷ Niệm (Ở DƯỚI VIDEO):** Khung ảnh bưu thiếp Polaroid nghệ thuật có thể **dùng ngón tay vuốt lướt qua (Swipe)** hoặc bấm nút mũi tên `<` và `>`, hỗ trợ phóng to toàn màn hình (Lightbox).
5. **Hộp thư tri ân & Thả tim:** Quote box trang trọng, nút thả tim bung chùm hoa rực rỡ và sổ lưu bút tương tác.
