-- =========================================================
-- SUPABASE SCHEMA CHO TRANG WEB TRI ÂN 20/11 - LỚP 11/1
-- Chạy đoạn mã này trong mục SQL Editor của Supabase Dashboard
-- =========================================================

-- 1. BẢNG CÀI ĐẶT CHUNG & BỨC THƯ TRI ÂN (trian_2011)
CREATE TABLE IF NOT EXISTS public.trian_2011 (
    id TEXT PRIMARY KEY DEFAULT 'config_11_1',
    hero_title TEXT DEFAULT 'Gửi Người Lái Đò Thầm Lặng',
    hero_subtitle TEXT DEFAULT 'Thanh xuân của 11/1 dưới mái trường thân yêu',
    quote_content TEXT DEFAULT 'Kính chúc Thầy Cô luôn dồi dào sức khỏe, hạnh phúc và vẹn nguyên ngọn lửa đam mê vì thế hệ tương lai.',
    video_url TEXT DEFAULT 'video-20-11.mp4',
    video_type TEXT DEFAULT 'local', -- 'local' hoặc 'youtube'
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

-- Dữ liệu khởi tạo cho trian_2011
INSERT INTO public.trian_2011 (id, hero_title, hero_subtitle, quote_content, video_url, video_type)
VALUES (
    'config_11_1',
    'Gửi Người Lái Đò Thầm Lặng',
    'Thanh xuân của 11/1 dưới mái trường thân yêu',
    'Kính chúc Thầy Cô luôn dồi dào sức khỏe, hạnh phúc và vẹn nguyên ngọn lửa đam mê vì thế hệ tương lai.',
    'video-20-11.mp4',
    'local'
) ON CONFLICT (id) DO NOTHING;

-- 2. BẢNG ALBUM ẢNH KỶ NIỆM (class_album)
CREATE TABLE IF NOT EXISTS public.class_album (
    id BIGSERIAL PRIMARY KEY,
    src TEXT NOT NULL,
    title TEXT NOT NULL,
    subtitle TEXT DEFAULT 'Khoảnh khắc lớp 11/1',
    sort_order INT DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

-- Dữ liệu mẫu khởi tạo cho album
INSERT INTO public.class_album (src, title, subtitle, sort_order)
VALUES 
('anh-lop-11-1.jpg', 'Thanh xuân của 11/1 dưới mái trường thân yêu', 'Ảnh tập thể Lớp 11/1 • THPT Hà Trung', 1),
('anh-lop-2.jpg', 'Những tiết học say mê & Nụ cười bảng đen', 'Bụi phấn nghiêng nghiêng theo từng bài giảng', 2),
('anh-lop-3.jpg', 'Hội thi Tri Ân 20/11 - Tự hào 11B1', 'B1 - Beating As One • Nhiệt huyết tuổi trẻ', 3),
('anh-lop-4.jpg', 'Khoảnh khắc ấm áp bên Thầy Cô kính yêu', 'Tình nghĩa thầy trò son sắt không phai', 4)
ON CONFLICT DO NOTHING;

-- 3. BẢNG SỔ LƯU BÚT TRI ÂN (guestbook)
CREATE TABLE IF NOT EXISTS public.guestbook (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    text TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

-- Lời chúc mẫu khởi tạo
INSERT INTO public.guestbook (name, text)
VALUES 
('Bạn Minh Quân (Lớp trưởng)', 'Chúc cô chủ nhiệm luôn tươi trẻ, nhiều niềm vui và mãi yêu thương đàn con 11/1 này ạ! ❤️'),
('Bạn Thu Hà', 'Cảm ơn thầy cô đã luôn bao dung và ân cần. Chúc thầy cô 20/11 ngập tràn hoa tươi và nụ cười! 💐'),
('Học sinh 11/1', 'Mãi khắc ghi công ơn người thầy, người cô đã trao cho chúng em đôi cánh ước mơ!')
ON CONFLICT DO NOTHING;

-- 4. BẢNG LƯỢT THẢ TIM (page_likes)
CREATE TABLE IF NOT EXISTS public.page_likes (
    id TEXT PRIMARY KEY DEFAULT 'likes_11_1',
    count BIGINT DEFAULT 1101,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

INSERT INTO public.page_likes (id, count)
VALUES ('likes_11_1', 1101)
ON CONFLICT (id) DO NOTHING;

-- BẬT ROW LEVEL SECURITY (RLS) VÀ CẤP QUYỀN ĐỌC / GHI CHO ANON KEY
ALTER TABLE public.trian_2011 ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.class_album ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.guestbook ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.page_likes ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Cho phép đọc công khai trian_2011" ON public.trian_2011 FOR SELECT USING (true);
CREATE POLICY "Cho phép ghi trian_2011" ON public.trian_2011 FOR ALL USING (true);

CREATE POLICY "Cho phép đọc công khai class_album" ON public.class_album FOR SELECT USING (true);
CREATE POLICY "Cho phép ghi class_album" ON public.class_album FOR ALL USING (true);

CREATE POLICY "Cho phép đọc công khai guestbook" ON public.guestbook FOR SELECT USING (true);
CREATE POLICY "Cho phép ghi guestbook" ON public.guestbook FOR ALL USING (true);

CREATE POLICY "Cho phép đọc công khai page_likes" ON public.page_likes FOR SELECT USING (true);
CREATE POLICY "Cho phép ghi page_likes" ON public.page_likes FOR ALL USING (true);

-- BẬT REALTIME REPLICATION CHO CÁC BẢNG TRÊN
ALTER PUBLICATION supabase_realtime ADD TABLE public.trian_2011;
ALTER PUBLICATION supabase_realtime ADD TABLE public.class_album;
ALTER PUBLICATION supabase_realtime ADD TABLE public.guestbook;
ALTER PUBLICATION supabase_realtime ADD TABLE public.page_likes;
