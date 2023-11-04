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
    - 
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