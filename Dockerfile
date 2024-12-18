# Bước 1: Chọn image Node.js từ Docker Hub
FROM node:16

# Bước 2: Tạo thư mục làm việc trong container
WORKDIR /app

# Bước 3: Sao chép package.json và package-lock.json vào container
COPY package*.json ./

# Bước 4: Cài đặt dependencies
RUN npm install

# Bước 5: Sao chép toàn bộ mã nguồn vào container
COPY . .

# Bước 6: Expose cổng mà ứng dụng sử dụng (ví dụ: cổng 3000)
EXPOSE 3000

# Bước 7: Chạy ứng dụng khi container bắt đầu
CMD ["npm", "start"]
