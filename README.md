# Counter with History Flutter App
## Deskripsi
Aplikasi counter sederhana dengan riwayat nilai setiap kali counter bertambah. Menggunakan Provider untuk state management.
## Widget Tree (garis besar)
- MyApp (MaterialApp)
  - HomeScreen (Scaffold)
    - CounterDisplay (Text besar)
    - FloatingActionButton (Increment)
    - AppBar dengan tombol History dan Reset
  - HistoryScreen (Scaffold)
    - HistoryList (ListView menampilkan riwayat)
## State Management
Menggunakan Provider (ChangeNotifier) karena mudah dipahami dan cocok untuk aplikasi kecil.
## fitur
- Increment counter
- Reset counter dan riwayat
- Lihat riwayat nilai counter dengan timestamp
- Navigasi antar layar dengan Navigator
![Screenshot](https://github.com/user-attachments/assets/99dc8abd-892a-40d2-b3bc-449b63bc51c0)
