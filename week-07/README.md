# **Laporan Praktikum**
# **Pertemuan 7**
### **Layout & Navigasi**
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

1. menerapkan jenis-jenis layout
2. menerapkan navigasi
3. menerapkan routing

<br>

---------
<br>

### **Praktikum 1: Membangun Layout di Flutter**
>Apa yang akan Anda pelajari<p>
>1. Cara kerja mekanisme tata letak Flutter.
>2. Cara menata widget secara vertikal dan horizontal.
>3. Cara membuat tata letak Flutter.
><p>

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda.

>**Perhatian:**<p>Diasumsikan Anda telah berhasil melakukan setup environment Flutter SDK, VS Code, Flutter Plugin, dan Android SDK pada pertemuan pertama.<p>

**Tampilan akhir yang akan Anda buat**<p>
<img src = "https://jti-polinema.github.io/flutter-codelab/07-layout-navigasi/img//52e2825a0742c242.png"><p>

### **Langkah 1 Buat Project Baru**
Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

### **Langkah 2 Buka file lib/main.dart**
Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.<p>

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Alvian Nur Firdaus | 2141720022',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```


### **Langkah 3 Identifikasi layout diagram**
Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

- Identifikasi baris dan kolom.
- Apakah tata letaknya menyertakan kisi-kisi (grid)?
- Apakah ada elemen yang tumpang tindih?
- Apakah UI memerlukan tab?
- Perhatikan area yang memerlukan alignment, padding, atau borders.

Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.

<img src = "https://jti-polinema.github.io/flutter-codelab/07-layout-navigasi/img//f38a1b954df85972.png"><p>

Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.<p>

<img src = "https://jti-polinema.github.io/flutter-codelab/07-layout-navigasi/img//c39ec49e9db9ebb8.png"><p>

Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.<p>

<img src = "https://jti-polinema.github.io/flutter-codelab/07-layout-navigasi/img//43883262364c63da.png"><p>

Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.<p>

### **Langkah 4 Implementasi title row**
Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:<p>

```dart
Widget titleSection = Container(
  padding: const EdgeInsets.all(...),
  child: Row(
    children: [
      Expanded(
        /* Jawaban soal 1*/
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            /*Jawaban soal 2*/
            Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung Ijen Banyuwangi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Banyuwangi, Jawa-Timur, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
      /*Jawaban soal 3*/
      Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
```

**soal 1** Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.<p>

**soal 2** Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.<p>

**soal 3** Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

<img src = "https://jti-polinema.github.io/flutter-codelab/07-layout-navigasi/img//ec4cd5a8c9e993f4.png"><p>

### **Berikut adalah hasil dari Praktikum saya**<p>

<img src = "docs/praktikum1_01.PNG"><p>

-----
<br>

### **Praktikum 2 Implementasi button row"**
Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### **Langkah 1 Buat method Column _buildButtonColumn**
Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.<p>

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.<p>

**lib/main.dart (_buildButtonColumn)**
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ···
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```

### **Langkah 2 Buat widget buttonSection**
Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.<p>

Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():<p>

**lib/main.dart (buttonSection)**
```dart
Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
```

### **Langkah 3 Tambah button section ke body**
Tambahkan variabel buttonSection ke dalam body seperti berikut:<p>

<img src = "https://jti-polinema.github.io/flutter-codelab/07-layout-navigasi/img//d026c1bc3e8e1aa0.png"><p>

### **Berikut adalah hasil dari Praktikum saya**<p>

<img src = "docs/praktikum2_01.PNG"><p>
----
<br>

### **Praktikum 3: Implementasi text section"**
Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### **Langkah 1 Buat widget textSection**
Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

```dart
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Carilah teks di internet yang sesuai '
    'dengan foto atau tempat wisata yang ingin '
    'Anda tampilkan. '
    'Tambahkan nama dan NIM Anda sebagai '
    'identitas hasil pekerjaan Anda. '
    'Selamat mengerjakan 🙂.',
    softWrap: true,
  ),
);
```
Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.

### **Langkah 2 Tambahkan variabel text section ke body**
Tambahkan widget variabel textSection ke dalam body seperti berikut:<p>

<img src = "https://jti-polinema.github.io/flutter-codelab/07-layout-navigasi/img//aa2c329d766be950.png"><p>

### **Berikut adalah hasil dari Praktikum saya**<p>

<img src = "docs/praktikum3_01.PNG"><p>

----
<br>

### **Praktikum 4: Implementasi image section**
Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### **Langkah 1 Siapkan aset gambar**
Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut:

```dart
  //To add assets to your application, add an assets section, like this:
  assets:
  - images/kawah2.jpg
```
Contoh nama file gambar di atas adalah kawah2.jpg<p>

>**Tips**<p>
>- Perhatikan bahwa pubspec.yaml sensitif terhadap huruf besar-kecil, jadi tulis assets: dan URL gambar seperti yang ditunjukkan di atas.
>- File pubspec juga sensitif terhadap spasi, jadi gunakan indentasi yang tepat.
>- Anda mungkin perlu memulai ulang program yang sedang berjalan (baik di simulator atau perangkat yang terhubung) agar perubahan pubspec dapat diterapkan.

### **Langkah 2 Tambahkan gambar ke body**
Tambahkan aset gambar ke dalam body seperti berikut:

```dart
 body: Column(
          children: [
            Image.asset(
              'images/kawah2.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
```

BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.

### **Langkah 3 Terakhir, ubah menjadi ListView**
Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

```dart
 return MaterialApp(
      title: 'Flutter layout: Alvian Nur Firdaus | 2141720022',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            Image.asset(
              'images/kawah2.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
```
### **Berikut adalah hasil dari Praktikum saya**<p>
<img src = "docs/praktikum4_01.PNG"><p>

------
<br>

### **Tugas Praktikum**
1. Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!<p>

    >**Jawab**<p>
    > Sudah saya jawab dan jelaskan pada praktikum 1, 2, 3 dan 4 tadi diatas atau juga bisa mengklik link dibawah kemudia diarahkan keatas secara otomatis
    >- [Praktikum 1 (klik)](#praktikum-1-membangun-layout-di-flutter)<p>
    >- [Praktikum 2 (klik)](#praktikum-2-implementasi-button-row)<p>
    >- [Praktikum 3 (klik)](#praktikum-3-implementasi-text-section)<p>
    >- [Praktikum 4 (klik)](#praktikum-4-implementasi-image-section)<p>
  
  <table>
  <tr>
    <th><img src="docs/praktikum1_01.PNG"></th>
    <th><img src="docs/praktikum2_01.PNG"></th>
    <th><img src="docs/praktikum3_01.PNG"></th>
    <th><img src="docs/praktikum4_01.PNG"></th>
  </tr>
</table>

<p>

2. Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics<p>

    >**Jawab**<p>

### **Code LabBasic Flutter layout concepts**<p>

### **Row and Column classes**

  <table>
  <tr>
    <th>Creating a Row</th>
    <th>Creating a Column</th>
  </tr>
  <tr>
    <th><img src="docs/CreatingaColumn_row.PNG"></th>
    <th><img src="docs/CreatingaColumn_column.PNG"></th>
  </tr>
</table>

### **mainAxisSize property**

<table>
  <tr>
    <th>MainAxisSize.max</th>
    <th>MainAxisSize.min</th>
  </tr>
  <tr>
    <th><img src="docs/ModifyingaxisSize_max.PNG"></th>
    <th><img src="docs/ModifyingaxisSize_min.PNG"></th>
  </tr>
</table>

### **mainAxisAlignment property**

<table>
  <tr>
    <th>MainAxisAlignment.start</th>
    <th>MainAxisAlignment.end</th>
  </tr>
  <tr>
    <th><img src="docs/Modifyingmainaxisalignment_start.PNG"></th>
    <th><img src="docs/Modifyingmainaxisalignment_end.PNG"></th>
  </tr>
</table>

### **crossAxisAlignment property**

<table>
  <tr>
    <th>CrossAxisAlignment.center</th>
    <th>CrossAxisAlignment.start</th>
  </tr>
  <tr>
    <th><img src="docs/Modifyingcrossaxisalignment_center.PNG"></th>
    <th><img src="docs/Modifyingcrossaxisalignment_start.PNG"></th>
  </tr>
</table>

### **Flexible widget**

<table>
  <tr>
    <th>FlexFit.loose</th>
    <th>FlexFit.tight</th>
  </tr>
  <tr>
    <th><img src="docs/Changingfitproperties_fit.PNG"></th>
    <th><img src="docs/Changingfiproperties_tight.PNG"></th>
  </tr>
</table>

### **Expanded widget**
<table>
  <tr>
    <th>  Expanded(child: BlueBox(),),</th>
  </tr>
  <tr>
    <th><img src="docs/expanded.PNG"></th>
  </tr>
</table>

### **SizedBox widget**

<table>
  <tr>
    <th>The following example wraps the middle BlueBox widget inside of a SizedBox widget and sets the BlueBox’s width to 100 logical pixels.</th>
    <th>Add a height property equal to 100 logical pixels inside the SizedBox widget, and run again.</th>
    <th>Creating space</th>
  </tr>
  <tr>
    <th><img src="docs/Resizing a widget1.PNG"></th>
    <th><img src="docs/Resizing a widget.PNG"></th>
    <th><img src="docs/Creatingspace.PNG"></th>
  </tr>
</table>

### **Spacer widget**

<table>
  <tr>
    <th>The following example separates the first two BlueBox widgets using a Spacer widget with a flex value of 1.,</th>
    <th>Add another Spacer widget (also with a flex value of 1) between the second and third BlueBox widgets</th>
  </tr>
  <tr>
    <th><img src="docs/Creating more space.PNG"></th>
    <th><img src="docs/Creating more space1.PNG"><th>
  </tr>
</table>

### **Text wtidge**

<tr>
    <th>Aligning text</th>
  </tr>
  <tr>
    <th><img src="docs/Aligning text.PNG"></th>
  </tr>
</table>

### **Icon widget**

<table>
<tr>
    <th>Creating an Icon</th>
  </tr>
  <tr>
    <th><img src="docs/CreatinganIcon.PNG"></th>
  </tr>
</table>

### **Image widget**

<table>
<tr>
    <th>No Image</th>
    <th>add Image</th>
  </tr>
  <tr>
    <th><img src="docs/Displayinganimage.PNG"></th>
    <th><img src="docs/Displayinganimage_alvian.PNG"></th>
  </tr>
</table>

### **Putting it all together**

<table>
<tr>
    <th>result</th>
  </tr>
  <tr>
    <th><img src="docs/exercise1.PNG"></th>
  </tr>
</table>


3. Kumpulkan link commit repository GitHub Anda ke spreadsheet yang telah disediakan!<p>

    >**Jawab**<p>
    >[Berikut Link Repository saya (klik)](https://github.com/alvianfirdaus/2141720022-mobile-2023/tree/main/week-07)<p>


