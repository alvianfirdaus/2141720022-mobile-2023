# **Laporan Praktikum**
# **Pertemuan 13**
### **Lanjutan State Management dengan Streams**
------


### **Data Mahasiswa**


><p>Nama : Alvian Nur Firdaus<p>
>NIM : 2141720022<p>
>Kelas : 3H<p>
>Prodi : D-IV Teknik Inormatika<p>
>Jurusan : Teknologi Inormasi<p>


<br>

### **Tujuan Praktikum**
Setelah menyelesaikan codelab ini Anda akan mampu untuk:

1. Menggunakan streams
2. Menggunakan stream controllers dan sinks
3. Menginjeksi transformasi data ke dalam streams
4. Mendaftar di stream events
5. Menggunakan multi stream subscriptions
6. Menggunakan StreamBuilder untuk membuat UI reactive
7. Menggunakan BLoC pattern

<br>

---------
<br>

### **Praktikum 1: Dart Streams**
Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda (ketik di README.md) pada setiap soal yang ada di beberapa langkah praktikum ini.<p>

>**Perhatian:** Diasumsikan Anda telah berhasil melakukan setup environment Flutter SDK, VS Code, Flutter Plugin, dan Android SDK pada pertemuan pertama

### **Langkah 1: Buat Project Baru**
Buatlah sebuah project flutter baru dengan nama stream_nama (beri nama panggilan Anda) di folder week-13/src/ repository GitHub Anda<p>

### **Langkah 2: Buka file main.dart**
Ketiklah kode seperti berikut ini.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

```

>Soal 1<p>
>Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.<p>
>Gantilah warna tema aplikasi sesuai kesukaan Anda.<p>
>Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"<p>

>**Jawab**<p>
><img src="docs/soal1ajp.PNG"><p>
><img src="docs/soal1bjp.PNG"><p>

<!-- <table>
    <tr>
        <th><img src="docs/soal17bjp.jpeg"></th>
        <th><img src="docs/soal17ajp.jpeg"></th>
        <th><img src="docs/soal17gf.gif"></th>
    </tr>
</table> -->