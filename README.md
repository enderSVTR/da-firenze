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
![home ui](https://github.com/user-attachments/assets/99dc8abd-892a-40d2-b3bc-449b63bc51c0)
![button](https://github.com/user-attachments/assets/d206c00a-a770-44ca-8778-78c32fc82924)
![page2](https://github.com/user-attachments/assets/1b6e5bb2-7e22-4a92-bf9d-700ef20f927c)
![to reset progression](https://github.com/user-attachments/assets/43e915df-5fd9-41cd-941e-feb097d6954c)
[](https://github.com/user-attachments/assets/1c4c3783-edc0-4ede-b5d9-fc4cb41d1d6c)


