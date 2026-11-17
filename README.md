# HƯỚNG DẪN TRANG WEB TRI ÂN 20/11 - TẬP THỂ LỚP 11/1

Trang web Landing Page một trang (Single Page) chào mừng **Ngày Nhà giáo Việt Nam 20/11** dành riêng cho tập thể **Lớp 11/1 (THPT Hà Trung - B1 Beating As One)**. 
Thiết kế tối ưu **Mobile-first** để Thầy/Cô và các bạn quét mã QR xem trọn vẹn trên điện thoại.

---

## 📁 CẤU TRÚC THƯ MỤC DỰ ÁN
Thư mục: `C:\Users\Admin\.gemini\antigravity\scratch\tri-an-20-11\`

```
tri-an-20-11/
├── index.html            <- File trang web chính (Mở bằng trình duyệt bất kỳ)
├── logo-lop.png          <- Logo lớp 11/1 (THPT Hà Trung - B1)
├── nhac-nen-20-11.mp3    <- Nhạc nền tri ân "Người Gieo Mầm Xanh"
├── video-20-11.mp4       <- Video tri ân phát trực tiếp trên web
├── anh-lop-11-1.jpg      <- Ảnh tập thể chính (Polaroid slide 1)
├── anh-lop-2.jpg         <- Ảnh kỷ niệm giờ học (Polaroid slide 2)
├── anh-lop-3.jpg         <- Ảnh kỷ niệm phong trào / văn nghệ (Polaroid slide 3)
├── anh-lop-4.jpg         <- Ảnh khoảnh khắc bên Thầy Cô (Polaroid slide 4)
└── README.md             <- Tài liệu hướng dẫn này
```

---

## 🎵 1. TÍNH NĂNG NHẠC NỀN THÔNG MINH
- **Nhạc nền:** Đã tích hợp bài hát tri ân **"Người Gieo Mầm Xanh"** (`nhac-nen-20-11.mp3`) vô cùng xúc động.
- **Âm lượng:** Đặt mặc định ở mức **25%** (nhỏ nhẹ, du dương vừa đủ nghe trong lúc đọc thiệp).
- **Cơ chế tự động thông minh:**
  - Khi người xem bấm vào nút **Xem Video**: Nhạc nền sẽ **TỰ ĐỘNG TẮT** ngay lập tức để nghe trọn vẹn tiếng của video.
  - Khi video **Tạm dừng (Pause)** hoặc **Xem xong (Ended)**: Nhạc nền sẽ **TỰ ĐỘNG BẬT LẠI**.
  - Có nút nốt nhạc góc trên để người xem chủ động bật/tắt bất kỳ lúc nào.

---

## 🔐 2. BẢO MẬT ADMIN & TERMINAL CMD (MẬT KHẨU: 2011)
Chỉ có **Admin** mới có quyền chỉnh sửa ảnh, thêm ảnh, thay video, sửa thư tri ân:
- **Người xem bình thường (Thầy Cô, học sinh):** Không thấy các nút sửa, giao diện 100% trang trọng, sạch sẽ.
- **Cách đăng nhập Admin:**
  - Bấm vào chữ **"Quản trị viên (Pass: 2011)"** ở dưới chân trang (Footer), hoặc **nhấn giữ Logo lớp 2 giây**.
  - Nhập mật khẩu: 👉 **`2011`**
- **Cửa sổ dòng lệnh Terminal CMD Admin:**
  - Sau khi đăng nhập, bạn có thể bấm nút **`>_ CMD Admin`** (hoặc bấm phím tắt `Ctrl + ~` hoặc `ESC` để đóng) để mở bảng điều khiển Hacker Console.
  - Các lệnh hữu ích trong CMD:
    - `help`: Xem danh sách tất cả các lệnh.
    - `video [link YouTube hoặc file]`: Đổi video nhanh.
    - `photo list`: Xem danh sách toàn bộ ảnh và số thứ tự.
    - `photo add [url]`: Thêm ảnh mới vào album.
    - `photo del [số]`: Xóa ảnh theo số thứ tự.
    - `photo title [số] [chữ]`: Đổi chú thích ảnh.
    - `music on` / `music off`: Bật/Tắt nhạc nền.
    - `music vol [0-100]`: Chỉnh âm lượng nhạc nền (vd: `music vol 20`).
    - `hearts [số]`: Chỉnh số lượt thả tim (vd: `hearts 2011`).
    - `quote [lời chúc]`: Thay đổi nội dung bức thư tri ân.
    - `wishes clear`: Xóa các lời chúc spam trong sổ lưu bút.
    - `stats`: Thống kê tổng số ảnh, số tim, số lời chúc.
    - `cls`: Xóa sạch màn hình dòng lệnh.
    - `exit`: Đóng cửa sổ CMD.
    - `logout`: Đăng xuất quyền Admin.

---

## 🎬 3. VIDEO TRI ÂN (ĐẶT Ở TRÊN PHẦN ẢNH)
- Trình phát video thẻ `<video>` xem trực tiếp mượt mà trên điện thoại và máy tính.
- Khi có video chính thức của lớp:
  - Bạn chỉ cần đổi tên file video thành `video-20-11.mp4` chép vào thư mục web.
  - Hoặc đăng nhập Admin rồi chọn video từ máy hoặc dán link YouTube.
  - Hỗ trợ đổi tỷ lệ **Ngang 16:9** và **Dọc 9:16** (chuẩn TikTok/CapCut).

---

## 📸 4. ALBUM ẢNH POLAROID LƯỚT XEM
- Được đặt **ở ngay dưới video**.
- Thầy cô và các bạn có thể **dùng ngón tay vuốt lướt qua (Swipe)** hoặc bấm nút mũi tên `<` và `>` để lướt xem từng tấm ảnh bưu thiếp.
- Bấm vào bất kỳ ảnh nào để phóng to toàn màn hình (Lightbox).
- Admin có thể bấm đổi ảnh, thêm ảnh mới hoặc xóa ảnh ngay trên giao diện web hoặc qua lệnh CMD.

---

## 📲 5. CÁCH ĐƯA LÊN MẠNG ĐỂ QUÉT MÃ QR
1. Kéo thả toàn bộ thư mục `tri-an-20-11` lên [Vercel](https://vercel.com) hoặc [Netlify Drop](https://app.netlify.com/drop) miễn phí.
2. Dán link nhận được vào trang tạo mã QR (như qrcode-monkey.com hoặc Canva) để tải ảnh mã QR in lên thiệp tri ân 20/11 cho thầy cô!
