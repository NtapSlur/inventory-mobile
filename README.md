# WillStore Inventory System

## Tugas 7
### Pertanyaan:
1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    - Stateless Widget
        - Stateless Widget adalah widget yang tidak mengalami perubahan selama aplikasi berjalan (tidak mengubah state selama aplikasi berjalan)
        - Penampilan dan propertinya tidak berubah, sebagai contoh adalah Icon, IconButton, atau Text
        - Stateless Widget digunakan ketika UI yang ingin dibuat tidak perlu bergantung pada widget lain yang dapat menyebabkan perubahan
    - Stateful Widget
        - Stateful Widget adalah widget yang dapat mengubah perubahan selama aplikasi berjalan (penampilan atau properti dapat berubah)
        - Bersifat dinamis, sebagai contoh adalah CheckBox, RadioButton, Slider, atau TextField
        - Dapat merespon perubahan data atau terdapat interaksi dari pengguna

1. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
    - ThemeData: mendefinisikan konfigurasi tampilan keseluruhan atau sebagian dari aplikasi seperti warna, gaya teks, atau parameter lainnya yang berlaku untuk komponen Material
    - MaterialApp: widget root dari sebuah aplikasi berbasis Flutter yang menyertakan sejumlah widget Material Design
    - Material: digunakan sebagai kanvas untuk render komponen UI yang mematuhi standar Material Design
    - Icon: untuk menampilkan ikon
    - Text: untuk menampilkan teks dalam bentuk string dengan gaya yang ditentukan
    - Column: untuk menampilkan child dalam tata letak secara vertikal
    - Center: untuk memposisikan child di tengah
    - Container: untuk menggabungkan satu atau lebih widget dan ditempatkan sesuai dengan kondisi yang sudah ditetapkan
    - InkWell: memberikan efek sentuhan pada child widget
    - AppBar: bar aplikasi Material Design yang biasanya digunakan sebagai bagian atas dari Scaffold
    - Padding: memberikan padding ke child widget
    - GridView.count: digunakan untuk menampilkan child dalam grid dengan jumlah kolom tetap
    - SingleChildScrollView: digunakan ketika ingin memastikan bahwa child widget dapat discroll
    - Scaffold: kerangka dasar visual Material Design untuk menyediakan struktur default kepada AppBar, Body, dll
    - SnackBar: untuk menampilkan pesan
    
1. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
    - Pertama, saya buat direktori terlebih dahulu untuk meletakkan project flutternya
    - Setelah buat direktori, saya cd (nama direktori) dan membuat project flutter baru dengan kode dibawah ini
    ```
    flutter create (nama project)
    ``` 
    - Setelah itu, di root direktori saya git init untuk menginisialisasi git.
    - Kemudian, saya cd (nama project) dan membuat file baru bernama menu.dart di subdirektori bin dan melakukan modifikasi untuk menu.dart dan main.dart seperti pada tutorial, hanya saja yang berbeda adalah untuk class ShopItem saya ubah menjadi class Item dan class ShopCard menjadi class Card.
    - Untuk bonus, saya ada menambahkan atribut baru untuk class Item sehingga menjadi seperti ini:
    ```
    class Item {
        final String name;
        final IconData icon;
        final Color color;

        Item(this.name, this.icon, this.color);
    }
    ``` 
    - Kemudian, untuk inisiasi Item baru dilakukan dengan cara sebagai berikut:
    ```
    final List<Item> items = [
    Item("Lihat Item", Icons.checklist, Colors.blue),
    Item("Tambah Item", Icons.add_circle, Colors.pink),
    Item("Logout", Icons.logout, const Color.fromARGB(255, 76, 139, 191)),
    ];  
    ```
    Jadi, di setiap pembuatan Item, kita masukkan 1 parameter tambahan untuk menentukan warna

## Tugas 8
### Pertanyaan:
1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    - Navigator.push() digunakan untuk menavigasi suatu halaman ke halaman baru tanpa menghapus halaman sebelumnya dari stack navigasi. Sebelumnya, perlu diketahui bahwa sistem widget Navigator dari Flutter akan memanfaatkan Stack untuk berpindah halaman. Ketika ingin berpindah ke halaman baru, Navigator akan push halaman yang baru tersebut ke dalam Stack dan akan ditampilkan pada user. Jika user mengklik tombol kembali, maka user dapat kembali ke halaman sebelumnya. Contoh dari penggunaan Navigator.push() adalah ketika user mengklik halaman detail item, kemudian setelah selesai user dapat klik Back dan kembali ke halaman Home.
    - Navigator.pushReplacement() digunakan untuk menavigasi suatu halaman ke halaman baru dan menghapus halaman sebelumnya dari stack navigasi. Contoh dari penggunaan Navigator.pushReplacement() adalah ketika user sedang berada di halaman login dan berhasil sukses login, maka program akan menavigasi ke halaman utama. Tetapi, ketika user mengklik tombol kembali, maka user tidak dapat kembali ke halaman login tersebut karena sudah dihapus halamannya ketika Navigator.pushReplacement() dipanggil.

1. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
    - Align
        - Widget ini digunakan untuk menyesuaikan posisi child widget dalam widget parentnya dan secara opsional menyesuaikan ukuran widget tersebut berdasarkan ukuran dari child widget.
    - AspectRatio
        - Widget ini digunakan untuk mengukur ukuran dari child widget sesuai dengan suatu ratio tertentu
    - Center
        - Widget ini digunakan untuk menyesuaikan posisi child widget di tengah widget parentnya. Jika center digunakan, maka child widget akan persis berada di tengah dari parentnya
    - Container
        - Widget ini digunakan untuk mengatur tata letak dan dekorasi widget lain. Container dapat dikatakan sebagai kotak persegi panjang yang dapat diberi hiasan menggunakan widget BoxDecoration.
    - Padding
        - Widget yang digunakan untuk memberikan padding kepada child widget. Ketika memberikan layout constrain dari parent ke child, padding akan mengecilkan constrain dari padding yang diberikan, sehingga child akan memiliki ukuran yang lebih kecil sesuai dengan constrainnya.
    - SizedBox
        - Widget ini digunakan untuk memberikan ukuran yang spesifik kepada child. Misalkan ada suatu child widget, maka widget SizedBox ini akan memaksa child widget untuk berukuran sesuai dengan ukuran SizedBox. 
    - Column
        - Widget ini digunakan untuk menyusun child widget secara vertikal. Jadi, per child widget akan disusun secara menurun.
    - GridView
        - Widget ini digunakan untuk menampilkan daftar grid yang terdiri atas pola sel-sel dalam tata letak vertikal dan horizontal. 
    - ListView
        - Widget ini adalah widget untuk scrolling yang paling umum digunakan. Widget ini akan menampilkan child widgets satu per satu dalam arah scroll secara linear.
    - Row
        - Widget ini digunakan untuk menyusun child widget secara horizontal. Jadi, per child widget akan disusun secara menyamping.
    - Stack
        - Widget ini digunakan untuk menumpuk beberapa widget satu diatas yang lain. Widget ini berguna untuk menimpa beberapa child widget, misalnya ingin menumpuk text diatas gambar.
    - SingleChildScrollView
        - Widget yang digunakan untuk menampilkan tepat satu child dalam bentuk scrollable. Widget ini berguna untuk memastikan apakah suatu box dapat discroll jika box container tersebut sudah menjadi terlalu kecil.

1. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    - Form
        - Form adalah sebuah wadah untuk mengelompokkan widget-widget yang berkaitan dengan form. Kita menggunakan Form sebagai penampung semua widget-widget yang berkaitan degan form seperti TextFormField
    - OutlineInputBorder
        - OutlineInputBorder digunakan untuk menghias dan mengatur tampilan field input text (pada tugas ini yaitu TextFormField). Namun, lebih spesifik, OutlineInputBorder digunakan untuk menghias tampilan outliner dari field input tersebut. Berbeda dengan InputDecoration yang bertugas untuk menghias bagian isi dari field input. Kita gunakan OutlineInputBorder untuk mendesign bentukan luaran dari field input.
    - InputDecoration
        - InputDecoration digunakan untuk menghias dan mengatur tampilan field input text (pada tugas ini yaitu TextFormField). Namun, lebih spesifik, InputDecoration dapat digunakan untuk memberikan placeholder kepada field input text.
    - TextFormField
        - TextFormField digunakan untuk meminta input dari pengguna kemudian input tersebut dapat divalidasi sehingga dapat mengecek apakah input yang diberikan oleh pengguna sudah valid atau belum valid.

1. Bagaimana penerapan clean architecture pada aplikasi Flutter?
    - Clean architecture adalah prinsip dalam software design yang berfokus pada separation of concerns dan bertujuan untuk menciptakan basis kode yang modular, terukur, dan dapat diuji. 
    - Dalam aplikasi Flutter, penerapan clean architecture dapat menjadi:
        - Presentation Layer (UI)
            - Layer ini berisikan kode-kode yang berkaitan dengan rendering User Interface, seperti widget, screen, dan tampilan. Misalnya, file dart pada tugas ini yang bertugas untuk mengembalikan tampilan adalah form.dart, drawer.dart (khusus drawer.dart hanya bertugas sebagai widget dan bukan keseluruhan layar) dan menu.dart (selain main.dart), maka form.dart dan menu.dart akan dimasukkan ke suatu folder baru bernama misalnya "UI" atau "screen".
        - Domain Layer
            - Layer ini berisikan kode-kode yang berkaitan dengan logic dan model data aplikasi Flutter yang dibuat. Misalnya untuk class Item yang berada di dalam menu.dart dapat dibuat menjadi sebuah file baru (kemudian untuk di menu.dart akan mengimport file class baru tersebut) dan dimasukkan ke folder baru bernama misalnya "model".
        - Data Layer
            - Layer ini berisikan kode-kode yang berkaitan dengan penerimaan data dan penyimpanan. Layer ini biasanya digunakan untuk melakukan manipulasi dan mengakses data. Data yang dimaksud dapat berupa remote API, database lokal, dll. 

1. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
    - Pertama, saya buat dulu file baru bernama drawer.dart untuk menjadi left drawer dari program ini yang selalu ada di setiap page (termasuk menu.dart dan form.dart). Di drawer.dart ini akan memuat 2 tulisan yaitu Nama Program dan Deskripsi Program dan memuat 2 ListTile untuk navigasi, yaitu untuk Halaman Utama dan Tambah Item, di mana ListTile untuk halaman utama akan dinavigasi ke MyHomepage di menu.dart menggunakan Navigator.pushReplacement() sedangkan untuk Tambah Item akan dinavigasi ke FormPage di form.dart menggunakan Navigator.push().
    - Kemudian, saya buat form.dart untuk menampilkan halaman Tambah Item. Di FormPage ini akan ada 4 atribut yaitu formkey, nama, amount, dan description. Kemudian, dibuat input textfield sebanyak 3 untuk masing-masing nama, amount, dan description. Setiap textfield dilengkapi oleh validator sehingga jika terjadi ketidaksesuaian input maka validator akan bernilai true sehingga nanti ketika tombol save ditekan maka akan menampilkan output "Terdapat form yang tidak valid" menggunakan SnackBar. Jika tombol save ditekan dan input valid, maka akan menampilkan pop up yang berisikan detail dari item yang disimpan dan kemudian akan mereset semua field input menjadi kosong kembali. 

## Tugas 9
### Pertanyaan:
1.  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
    - Bisa, tetapi implementasi tanpa membuat model akan membuat kode lebih sulit untuk dibaca dan dipelihara, terutama apabila struktur dari JSON sudah kompleks.

1. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    - CookieRequest digunakan untuk mendapatkan cookie yang dibuat oleh Django pada saat user login ke aplikasi sehingga dapat menghandle login dan logout dari user

1. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
     - Pertama, kita membuat request HTTP ke endpoint API untuk mengembalikan data JSON, yang di mana pada tugas ini terdapat pada kode sebagai berikut
     ```
     class _ProductPageState extends State<ProductPage> {
        Future<List<Product>> fetchProduct() async {
            var url = Uri.parse(
                'http://127.0.0.1:8000/json/');
            var response = await http.get(
                url,
                headers: {"Content-Type": "application/json"},
            );
        }
     ```
     - Kemudian, kita perlu untuk mengurai data JSON menjadi Object, yang di mana pada tugas ini terdapat pada kode sebagai berikut
     ```
     // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
            List<Product> list_product = [];
            for (var d in data) {
                if (d != null) {
                    list_product.add(Product.fromJson(d));
                }
            }
     ```
     - Karena data sudah dikonversi dari JSON menjadi Object, data tersebut jangan lupa disimpan ke dalam List untuk menggunakan data tersebut. Lalu, data sudah siap untuk ditampilkan

1. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    - Pertama, pada login.dart kita meminta informasi akun seperti username dan password, kemudian kita klik login. 
    - Kemudian, kita memanggil path /auth/login pada server Django dengan parameter username dan password
    - Pada views.py di Django akan melakukan proses autentikasi apakah user tersebut valid atau tidak. Jika user valid, maka Django akan mengirimkan status berhasil dan membuat user logged in. Jika tidak valid, maka Django akan mengirimkan status gagal dan membuat user tidak berhasil login.

1. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
    - ListView = menampilkan children dalam urutan yang dapat discroll
    - TextField = menerima input text dari user
    - TextButton = sebagai tombol untuk event handling
    - SizedBox = untuk memberikan tinggi / lebar secara spesifik kepada child

1. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    - Pertama, kita buat app Django baru untuk mengautentikasi yang dikirim dari Flutter. Kemudian, kita menyetting untuk urls.py dan views.py agar dapat mengimplementasikan fungsi login.
    - Kemudian, kita install semua depedensi yang sudah dijelaskan di tutorial
    - Lalu, untuk CookieRequest dibuat seperti dengan langkah pada tutorial
    - Buat login.dart untuk membuat screen dari login yang akan terintegrasi dengan fungsi login di views.py pada app autentikasi
    - Kemudian, kita perlu untuk membuat custom model berdasarkan data JSON dari Django app kita dengan bantuan QuickType. Setelah itu, kita buat product.dart yang berisi model dari Product
    - Lalu, kita menambahkan depedensi HTTP pada AndroidManifest.xml agar dapat mengakses internet untuk android app kita
    - Untuk menampilkan data product dari Django secara keseluruhan seperti tutorial, tetapi saya menambahkan button pada setiap data yang muncul sehingga ketika diklik akan mendirect ke page baru untuk menampilkan semua data yang ada.
    - Kemudian, form Flutter diintegrasikan dengan Django dengan menambahkan fungsi create_product_flutter di views.py pada app main dari inventory dan pathnya ditambahkan di urls.
    - Lalu, kita buat fungsi logout pada views.py di autentikasi app Django agar dapat logout dari aplikasi