# **Laporan Praktikum**
# **Pertemuan 4**
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
Setelah menyelesaikan codelab ini Anda akan mampu untuk:

1. Menerapkan collections pada bahasa pemrograman Dart
2. Menerapkan records pada bahasa pemrograman Dart
3. Menerapkan functions pada bahasa pemrograman Dart

<br>

---------
<br>

### **Praktikum 1: Eksperimen Tipe Data List**
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

**JAWAB**<p>
tessss<p>
<img src = "docs/praktikum1_01.PNG"><p>
tes tes<p>
<img src = "docs/praktikum1_02.PNG"><p>

### **Langkah 3**
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

**JAWAB**<p>
hhhh<p>
<img src = "docs/praktikum1_03.PNG"><p>
hhh


>**Catatan:**<p>
>Dart akan melakukan infers pada variabel list dengan tipe data List. Jika Anda mencoba menambahkan elemen berupa objek non-integer pada list, maka analyzer atau runtime akan error. Informasi lebih lanjut dapat membaca di tautan ini type inference.<p>

-----
<br>

### **Praktikum 2: Eksperimen Tipe Data Set"**
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
hhhhh<p>
<img src = "docs/praktikum2_01.PNG"><p>

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

Dokumentasikan code dan hasil di console, lalu buat laporannya.

**JAWAB**<p>
hhhhh<p>
<img src = "docs/praktikum2_04.PNG"><p>
hhhhhhh<p>

```dart
void main() {
  
}
```
berikut adalah hasil outputnya<p>
<img src = "docs/praktikum2_05.PNG"><p>

----
<br>

### **Praktikum 3: Eksperimen Tipe Data Maps"**
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
hhhh<p>
<img src = "docs/praktikum3_01.PNG"><p>
hhhh

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

**JAWAB**<p>
hhhhh<p>
<img src = "docs/praktikum3_03.PNG"><p>
hhhhh

----
<br>

### **Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators**
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
var list = [1, 2, 3];
var list2 = [0, ...list];
print(list1);
print(list2);
print(list2.length);
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
hhhh<p>
<img src = "docs/praktikum4_01.PNG"><p>
hhhh

### **Langkah 3**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
list1 = [1, 2, null];
print(list1);
var list3 = [0, ...?list1];
print(list3.length);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

**JAWAB**<p>
hhhhh<p>
<img src = "docs/praktikum4_03.PNG"><p>
hhhhh

### **Langkah 4**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

**JAWAB**<p>
hhhhh<p>
<img src = "docs/praktikum4_03.PNG"><p>
hhhhh

### **Langkah 5**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

**JAWAB**<p>
hhhhh<p>
<img src = "docs/praktikum4_03.PNG"><p>
hhhhh

### **Langkah 6**
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.

**JAWAB**<p>
hhhhh<p>
<img src = "docs/praktikum4_03.PNG"><p>
hhhhh

------
<br>

### **Praktikum 5: Eksperimen Tipe Data Records**

>Catatan: Tipe data Records mulai diperkenalkan pada Dart versi 3.0. Pastikan Anda sudah setup menggunakan Dart 3.0 atau yang lebih baru.

Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

### **Langkah 1**
Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
var record = ('first', a: 2, b: true, 'last');
print(record)
```

### **Langkah 2**
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**JAWAB**<p>
hhhh<p>
<img src = "docs/praktikum5_01.PNG"><p>
hhhh

### **Langkah 3**
Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.

```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

**JAWAB**<p>
hhhh<p>
<img src = "docs/praktikum5_01.PNG"><p>
hhhh

### **Langkah 4**
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

```dart
// Record type annotation in a variable declaration:
(String, int) mahasiswa;
print(mahasiswa);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

**JAWAB**<p>
hhhh<p>
<img src = "docs/praktikum5_01.PNG"><p>
hhhh

### **Langkah 5**
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

```dart
var mahasiswa2 = ('first', a: 2, b: true, 'last');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

**JAWAB**<p>
hhhh<p>
<img src = "docs/praktikum5_01.PNG"><p>
hhhh

------
<br>

### **Tugas Praktikum**
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!<p>

    >**Jawab**<p>
    > Sudah saya jawab dan jelaskan pada praktikum 1, 2, 3, 4 dan 5 tadi diatas atau juga bisa mengklik link dibawah kemudia diarahkan keatas secara otomatis
    >- [Praktikum 1 (klik)](#praktikum-1-eksperimen-tipe-data-list)
    >- [Praktikum 2 (klik)](#praktikum-2-eksperimen-tipe-data-set)
    >- [Praktikum 3 (klik)](#praktikum-3-eksperimen-tipe-data-maps)
    >- [Praktikum 4 (klik)](#praktikum-4-eksperimen-tipe-data-list-spread-dan-control-flow-operators)
    >- [Praktikum 5 (klik)](#praktikum-5-eksperimen-tipe-data-records)<p>
    > 
<p>

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!<p>

    >**Jawab**<p>
    >hhhh<p>

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!<p>

    >**Jawab**<p>
    >hhhh<p>

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!<p>

    >**Jawab**<p>
    >hhhh<p>

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!<p>

    >**Jawab**<p>
    >hhhh<p>

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!<p>

    >**Jawab**<p>
    >hhhh<p>

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!<p>

    >**Jawab**<p>
    >hhhh<p>

8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!<p>

    >**Jawab**<p>
    >[Berikut Link Repository saya (klik)](https://github.com/alvianfirdaus/2141720022-mobile-2023.git)<p>

