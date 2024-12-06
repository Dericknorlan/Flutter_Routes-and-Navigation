# Aplikasi Navigasi Flutter

A new Flutter project.

Aplikasi Flutter ini menunjukkan navigasi dasar antara tiga layar (FirstScreen, SecondScreen, dan ThirdScreen) menggunakan widget `Navigator` dan `BottomNavigationBar`. Ini juga mencakup `Drawer` untuk navigasi cepat antar layar.

## Fitur
- Tiga layar (`FirstScreen`, `SecondScreen`, dan `ThirdScreen`), masing-masing dengan kemampuan navigasi.
- Bottom navigation bar untuk beralih antar layar.
- Drawer dengan opsi navigasi untuk berpindah antar layar.
- Navigasi berbasis tombol untuk berpindah layar secara programatis.

## Struktur File

- **`lib/`**
  - `main.dart`: Titik masuk aplikasi, yang mengatur routing dan tema.
  - `first_screen.dart`: Berisi UI dan logika untuk layar pertama.
  - `second_screen.dart`: Berisi UI dan logika untuk layar kedua.
  - `third_screen.dart`: Berisi UI dan logika untuk layar ketiga.

# Cara Menggunakan Repository Ini

## Clone Repository
Untuk meng-clone repository ini, gunakan perintah berikut di terminal Anda:

```bash
git clone git@github.com:Dericknorlan/Flutter_Routes-and-Navigation.git
cd Flutter_Routes-and-Navigation
```

## Menjalankan Aplikasi
Untuk menjalankan aplikasi ini, gunakan perintah berikut di terminal Anda:

```bash
flutter run
```


## Cara Aplikasi Bekerja

### Layar Utama (FirstScreen)

- Aplikasi dimulai dengan `FirstScreen` sebagai rute awal.
- `FirstScreen` memiliki tombol yang menavigasi ke `SecondScreen`.
- **Bottom Navigation Bar** memungkinkan untuk beralih antara `FirstScreen`, `SecondScreen`, dan `ThirdScreen`.
- Aplikasi juga mencakup **Drawer** untuk navigasi, memudahkan pengguna untuk berpindah layar.

### Layar Kedua (SecondScreen)

- `SecondScreen` berisi dua tombol:
  - Satu tombol menavigasi ke `FirstScreen`.
  - Tombol lainnya menavigasi ke `ThirdScreen`.
- `SecondScreen` juga dilengkapi dengan **Bottom Navigation Bar** dan **Drawer** untuk navigasi layar.

### Layar Ketiga (ThirdScreen)

- `ThirdScreen` berisi dua tombol:
  - Satu tombol menavigasi kembali ke `SecondScreen`.
  - Tombol lainnya menavigasi ke `FirstScreen`.
- **Bottom Navigation Bar** dan **Drawer** juga tersedia untuk navigasi.

### Navigasi

Layar dapat diganti menggunakan:

1. **Bottom Navigation Bar**: Memungkinkan beralih layar dengan mengetuk ikon masing-masing.
2. **Drawer**: Anda juga dapat bernavigasi antar layar menggunakan drawer di setiap layar.
3. **Tombol**: Tombol yang ada di setiap layar memungkinkan navigasi ke layar lain.

## Pendekatan
Pengembangan aplikasi ini dilakukan dengan memanfaatkan kode dasar yang telah disediakan melalui eLearn sebagai fondasi utama. Kode tersebut kemudian dikembangkan dan disesuaikan lebih lanjut untuk memenuhi kebutuhan spesifik dari proyek ini, dengan penambahan fitur-fitur baru untuk menciptakan aplikasi yang lebih fungsional, relevan, dan sesuai dengan tujuan pengembangan.

## Tantangan
Selama pengembangan aplikasi ini saya menemukan ketika saya berpindah layar menggunakan button navbar tidak berfungsi dan tidak menunjukkan perubahan. Untuk emngatasi hal ini saya menggunakan selected index untuk men-tracking perubahan pada navbar ketika tombol atau button pada navbar ditekan agar navbar ttp mengikuti perubahan halaman. Selain itu saya menumukan bahwa navigasi yang saya buat belum sempurna karena, naviigasi yang saya buat mengubah keseluruhan layar termasuk navbar dan appbar dimana seharusnya yang berubah hanyalah isi dari halaman. Untuk masalah ini saya belum memperbaikinya namun saya sudah mendapatkan cara untuk mengatasi masalah ini dengan menggunakan destination dan index 
