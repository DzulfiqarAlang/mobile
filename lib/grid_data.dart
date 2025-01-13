import 'package:flutter/material.dart';
import 'package:uas_mobile_programming/list_vertical.dart';

class GridData extends StatelessWidget {
  GridData({super.key});

  final List<String> data = [
    'Real Madrid 24/25 Third Jersey',
    'Real Madrid 24/25 Home Jersey',
    'Predator Elite Bellingham',
    'F50 Elite Mid-Cut Firm Ground Boots',
    'Samba OG Shoes',
    'SL 72 OG Kseniaschnaider Shoes',
    'Adidas Campus',
    'Adidas Japan',
  ];

  final List<String> imageUrls = [
    'https://assets.adidas.com/images/w_600,f_auto,q_auto/7fc29944712e4e59a5bea5db8809bd98_9366/Real_Madrid_24-25_Third_Jersey_Brown_IY1761_HM1.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/78b62417f1e042aeb25e3353d278de3b_9366/Real_Madrid_24-25_Home_Authentic_Jersey_White_IX8095_HM1.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/1fc0d36efc634473917e5b5d19b4fed6_9366/Predator_Elite_Bellingham_Firm_Ground_Boots_Black_JI3380_22_model.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/16e549391760407d89b77ec87c2d1904_9366/F50_Elite_Mid-Cut_Firm_Ground_Boots_White_ID9203_22_model.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/9957aacd07ab4e879237d63b18c6ae89_9366/Samba_OG_Shoes_White_JI2044_04_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/bbb4e329d2b44127badc1a9dbe0a56f5_9366/SL_72_OG_Kseniaschnaider_Shoes_Multicolour_IE9027_04_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/4659ee058ba34bd2a5d0af500104c17d_9366/Campus_00s_Shoes_Black_HQ8708_01_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8eabb2302fd7451091ab3c681dfb427f_9366/Japan_Shoes_Green_IG4278_01_standard.jpg',
  ];

  final List<String> harga = [
    'Rp. 1.597.777',
    'Rp. 1.597.777',
    'Rp. 4.997.172',
    'Rp. 4.397.553',
    'Rp. 1.899.104',
    'Rp. 1.698.931',
    'Rp. 1.794.014',
    'Rp. 1.794.014',
  ];

  final List<String> deskripsi = [
    'Keanggunan adalah identitas mereka. Monogram “RMCF” yang timbul dan diulang-ulang di jersey ketiga Real Madrid ini, meminjam tampilan khasnya dari tulisan yang digunakan di rambu-rambu jalan di Madrid. Menonjol dari desain yang berkelas, Trefoil yang ikonik kembali hadir dalam seragam pertandingan adidas setelah istirahat panjang. Di balik itu semua, AEROREADY membuat para penggemar sepak bola tetap kering dan nyaman saat mereka meneriakkan dukungannya, produk ini dibuat dengan 100% bahan daur ulang. ',
    'Ketika adidas mendesain seragam kandang Real Madrid, mereka melihat kepada tradisi yang telah lama dipegang teguh oleh klub yang terkenal ini. Terinspirasi dari pakaian “chulapo” yang dikenakan di San Isidro Fiesta tahunan Madrid, pola gaya gigi anjing di jersey sepak bola ini memberikan sedikit sentuhan gaya. Juga dilengkapi dengan AEROREADY yang dapat menjaga kelembaban dan lencana klub yang dibordir, atasan ini dibuat untuk para penggemar, dibuat dengan 100% bahan daur ulang.',
    'Cetak gol seperti bintang sepak bola Eropa yang sedang naik daun dengan sepatu adidas Predator Elite koleksi terbatas ini. Menampilkan logo Jude Bellingham, bagian atas HybridTouch 2.0 dilengkapi dengan kerah adidas PRIMEKNIT untuk stabilitas. Lidah yang dapat dilipat dan sirip Strikeskin yang mencengkeram di kaki depan memberikan akurasi tendangan yang sesuai dengan playmaker Real Madrid ini.',
    'Bebaskan diri Anda dengan adidas F50. Diciptakan untuk membuka potensi penuh akselerasi, gerakan, dan kecepatan Anda. Sebagai bagian dari koleksi terbatas, sepatu ini memiliki bagian atas Fibertouch yang tipis dengan bagian tengah yang mendukung dan tekstur Sprintweb 3D untuk kontrol yang baik pada kecepatan tinggi.',
    'Pertama kali menjadi terkenal dipakai sebagai sepatu latihan, sepatu yang anggun dan ramping telah berevolusi, menampilkan desain dan fungsi yang lebih kasual.',
    'Kolaborasi dengan KSENIASCHNAIDER, sepatu adidas ini mengambil inspirasi dari desain atletik vintage dan memadukannya dengan pengaruh avant-garde dari merek fesyen asal Ukraina tersebut. Tekstil denim dan bagian atas kulit memberikan tampilan yang ramping sementara lapisan kulitnya menambah daya tarik.',
    'Meskipun memulai debutnya di lapangan keras, sepatu adidas Campus dengan cepat diadopsi di mana saja. Dengan sepatu ini, kami memindahkan siluet ikonik ke arah lain dan menambahkan bahan, warna, dan proporsi modern. Sepatu ini dibuat dengan bagian atas kulit premium yang dilapisi dengan kain terry tekstil yang lembut, dan semua itu ditopang oleh midsole berwarna putih pudar - sebuah hubungan yang jelas dengan warisan Campus.',
    'Seperti mengenakan sepotong sejarah di kaki Anda. Sepatu adidas Jepang ini merupakan edisi ulang dari sepatu olahraga tahun 1964 yang muncul dalam katalog untuk acara olahraga global tahun itu yang diadakan di Jepang. Meskipun sepatu ini tetap sedekat mungkin dengan desain aslinya yang sederhana, sepatu ini memiliki detail desain yang membedakannya - seperti ujung sepatu yang dijahit ganda.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muezza Store',
            style: TextStyle(
              color: Colors.lightBlue,
              fontFamily: 'DMSerifText',
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.white.withOpacity(0.8),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.lightBlue,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const List_view_vertical(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            childAspectRatio: 0.8,
          ),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: data[index],
                      harga: harga[index],
                      imageUrl: imageUrls[index],
                      deskripsi: deskripsi[index],
                    ),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 8,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Hero(
                        tag: imageUrls[index],
                        child: Image.network(
                          imageUrls[index],
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            harga[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(Icons.add_shopping_cart),
                          color: Colors.lightBlue,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String harga;
  final String imageUrl;
  final String deskripsi;

  const DetailPage({
    super.key,
    required this.title,
    required this.harga,
    required this.imageUrl,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: imageUrl,
              child: Image.network(
                imageUrl,
                height: 350.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 240, 240, 240),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    harga,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Tambah ke Keranjang',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    deskripsi,
                    style: const TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
