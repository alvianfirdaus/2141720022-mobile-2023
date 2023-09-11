# **Laporan Praktikum**
# **Pertemuan 3**
### **Percabangan pada pemrograman DART, Perulangan pada pemrograman DART, Operasi Gi**
------


### **Data Mahasiswa**


><p>Nama : Alvian Nur Firdaus<p>
>NIM : 2141720022<p>
>Kelas : 3H<p>
>Prodi : D-IV Teknik Inormatika<p>
>Jurusan : Teknologi Inormasi<p>


<br>

### **Tujuan Praktikum**
Setelah melakukan materi praktikum ini, mahasiswa mampu:

1. Mahasiswa mampu menerapkan teknik percabangan pada pemrograman DART
2. Mahasiswa mampu menerapkan teknik perulangan pada pemrograman Dart
3. Mahasiswa mampu mngeoperasikan Git sebagai media pengorganisasia proyek

<br>

---------

### **Praktikum 1: Menerapkan Control Flows ("if/else")**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

**JAWAB**<p>
setelah saya run pada langkah tersebut menghasilkan output seperti dibawah ini<p>
<img src = "docs/praktikum1_01.PNG"><p>
maka hasil kode diatas akan terjadi eror, hal tersebut terjadi karena penulisan Else If dengan huruf besar yang seharusnya ditulis sebagai else if, dan pada penulisan  Else juga dengan huruf besar yang seharusnya ditulis sebagai else (huruf kecil) maka akan tampil output yang benar seperti dibawah ini<p>
<img src = "docs/praktikum1_02.PNG"><p>
<br>

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

**JAWAB**<p>
hehehe

<br>

>**Equality checking and type coercion**<p>
>Di JavaScript, pemeriksaan dua variable dapat menggunakan double "==" atau triple "===". Untuk double "==" hanya membandingkan nilainya saja, sedangkan triple "===" dibandingkan dengan tipe datanya. Contohnya dalam JavaScript, "7" == 7 akan bernilai true, tetapi "7" === 7 akan bernilai false. Ini bisa jadi sebuah bug jika Anda lupa dengan operator ini. Dart cukup menggunakan double "==" untuk membandingkan nilai sekaligus tipe datanya.
<br>


Berikut tambahan video materi terkait <p>
- [Youtube Dart Conditional Expressions: Ternary Operator of Java. Dart Flutter Tutorial (klik)](https://www.youtube.com/watch?v=qNWcoc25Ex4)<p>
- [Youtube Dart SWITCH and CASE conditional statements. Dart Tutorial for Flutter (klik)](https://www.youtube.com/watch?v=XwehKYcCHzY)<p>

-----
### **Praktikum 2: Menerapkan Perulangan "while" dan "do-while"**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
while (counter < 33) {
  print(counter);
  counter++;
}
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
setelah saya melakukan eksekusi pada langkah q tersebut didapati eror seperti dibawah ini<p>
<img src = "docs/praktikum2_01.PNG"><p>
hal ini terjadi karena variabel counter tidak dideklarasikan atau diinisialisasi sebelumnya. Sehingga, jika  mencoba menjalankan kode tersebut, akan mendapatkan kesalahan karena counter tidak memiliki nilai awal yang jelas. Untuk menghindari kesalahan ini, perlu menginisialisasi counter sebelum menggunakannya dalam loop. dan berikut kode yang saya perbaiki beserta hasil outputnya

```dart
void main() {
  int counter = 0; // Inisialisasi counter
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```
<img src = "docs/praktikum2_02.PNG"><p>
<img src = "docs/praktikum2_03.PNG"><p>
<br>

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.

**JAWAB**<p>
hehehe

<br>

Berikut tambahan video materi terkait Conditional Expressions dan Switch-Case statements.<p>
- [Youtube Dart Loops and Iterators: Loop Control Statements. Dart Flutter Tutorial  (klik)](https://www.youtube.com/watch?v=JuOHAd0LWPE&t=1s)<p>


----
### **Praktikum 3:  Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"**
Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
for (Index = 10; index < 27; index) {
  print(Index);
}
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
setelah saya mengeksekusi kode pada langkah 1 tersebut didapati eror seperti gambar dibawah ini<p>
<img src = "docs/praktikum3_01.PNG"><p>
hal tersebut terjadi karena Deklarasi dan inisialisasi variabel index dengan tipe data int harus dimulai dengan huruf kecil (index bukan Index) untuk mengikuti konvensi penulisan dalam Dart, Pada bagian for, harus menambahkan ekspresi index++ untuk menambah nilai index setiap kali iterasi. Tanpa ini, loop tidak akan pernah berakhir, dan  akan mengalami loop tak terbatas. dan berikut hasil modifikasi kodenya

```dart
void main() {
  for (int index = 10; index < 27; index++) {
    print(index);
  }
}
```
<img src = "docs/praktikum3_02.PNG"><p>
maka kode akan mencetak angka dari 10 hingga 26 karena loop akan berjalan selama index kurang dari 27.
<br>

### **Langkah 3**
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

```dart
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.

**JAWAB**<p>
hehehe

<br>

Berikut tambahan video materi terkait .<p>
- [Youtube Dart FOR Loop and how it works internally. Dart Tutorial for Flutter(klik)](https://www.youtube.com/watch?v=BCiyJOb7X-w&t=4s)<p>

----
### **Tugas Praktikum**
1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!<p>

**Jawab**<p>
- [Praktikum 1 (klik)](#praktikum-1-menerapkan-control-flows-ifelse)
- [Praktikum 2 (klik)](#praktikum-2-menerapkan-perulangan-while-dan-do-while)
- [Praktikum 3 (klik)](#praktikum-3-praktikum-3-menerapkan-perulangan-for-dan-break-continue)
<p>

2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.<p>
**Jawab**<p>


3. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!



