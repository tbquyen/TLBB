# Cách chạy TLBB với Docker Compose

1. Đảm bảo đã cài Docker và Docker Compose.

2. Chuẩn bị thư mục:
   - Đặt các script khởi tạo MySQL vào `./mysql/docker-entrypoint-initdb.d`
   - Chuẩn bị thư mục mã nguồn TLBB `tlbb` rồi nén vào thư mục `./server/tlbb.tar.gz`

3. Build môi trường:

```bash
docker compose build
```

4. Khởi động dịch vụ:
```bash
docker compose up -d
```

5. Kiểm tra logs (nếu cần):

```bash
docker logs -f tlbb-server
docker logs -f tlbb-database
```

6. Dừng dịch vụ:

```bash
docker compose down
```
