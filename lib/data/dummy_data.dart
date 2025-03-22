import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/trip_model.dart';

List<Trip> dummyTrips = [
  Trip(
    id: '1',
    title: 'Opentrip 3D2N Labuan Bajo - Komodo by Travel Buddies',
    image:
        'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2021/03/01/19a67468-e5bd-49e2-91cd-e4cebc22998d-1614577409368-09dd002fe8bd9fccba4150dbc58499cc.jpg',
    summary:
        '''Labuan Bajo adalah destinasi impian para pelancong dengan keindahan alam yang luar biasa. Perjalanan ini akan membawamu menjelajahi Taman Nasional Komodo, habitat asli komodo yang merupakan salah satu hewan purba yang masih bertahan hingga kini. 

      Kamu juga akan mengunjungi Pink Beach, pantai unik dengan pasir berwarna pink yang terbentuk dari pecahan karang merah dan pasir putih. Tempat ini sangat cocok untuk bersantai atau snorkeling menikmati biota lautnya yang kaya.

      Selain itu, ada juga Taka Makassar, sebuah pulau pasir putih kecil yang hanya muncul saat air surut, dikelilingi oleh air laut yang jernih. Di sekitar sini terdapat Manta Point, tempat terbaik untuk melihat pari manta raksasa yang berenang bebas.

      Perjalanan ini juga mencakup kunjungan ke Pulau Padar dengan pemandangan ikoniknya, serta Pulau Kanawa yang terkenal dengan air lautnya yang jernih dan keindahan bawah lautnya. Bersiaplah untuk pengalaman tak terlupakan di Labuan Bajo!''',
    place: 'Labuan Bajo, NTT',
    address:
        'Labuan Bajo, Kecamatan Komodo, Kabupaten Manggarai Barat, NTT, Indonesia',
    location: LatLng(-8.4863, 119.8877),
    importantInformation: [
      'Peserta wajib dalam kondisi sehat dan tidak memiliki riwayat penyakit berat.',
      'Gunakan pakaian yang nyaman dan perlengkapan renang jika ingin snorkeling atau diving.',
      'Bawalah uang tunai secukupnya karena tidak semua tempat menerima pembayaran digital.',
      'Pastikan untuk mengikuti arahan dari tour guide demi keselamatan selama perjalanan.'
    ],
    highlight: [
      'Jelajahi Taman Nasional Komodo dan saksikan komodo di habitat aslinya.',
      'Nikmati keindahan Pink Beach dan snorkeling di perairan jernihnya.',
      'Kunjungi Pulau Padar dengan panorama ikoniknya yang menakjubkan.',
      'Rasakan sensasi berenang bersama pari manta di Manta Point.',
      'Cocok untuk wisatawan yang mencari petualangan dan keindahan alam.'
    ],
    rating: 4.8,
    price: 3500000,
    photos: [
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2021/03/01/19a67468-e5bd-49e2-91cd-e4cebc22998d-1614577409368-09dd002fe8bd9fccba4150dbc58499cc.jpg',
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2021/03/01/7bc424ba-2510-4cdc-958f-3bc84550ff9f-1614577420034-2d87573ca67d28d2726af87be46d6a93.jpg',
      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2021/03/01/3112928c-dd39-47e1-953a-990ada82986e-1614577422204-5f4e093964712fa7432beae7fa58e747.jpg',
    ],
    packages: [
      PricePackage(
        name: 'Regular Package',
        price: 3500000,
        includes: ['Boat', 'Hotel', 'Guide', 'Makan 3x sehari'],
        excludes: ['Personal Expenses', 'Tiket masuk Taman Nasional Komodo'],
      ),
    ],
    reviews: [
      Review(
        user: 'Dian Pratama',
        role: 'Solo Traveler',
        comment:
            'Pemandangan luar biasa! Panduan wisata sangat informatif dan kapal cukup nyaman. Sangat direkomendasikan!',
        rating: 5,
        day: DateTime(2023, 7, 14),
      ),
      Review(
        user: 'Rizky Aditya',
        role: 'Pasangan',
        comment:
            'Perjalanan sangat menyenangkan, tapi cuaca agak mendung saat di Pulau Padar. Meskipun begitu, snorkeling di Manta Point luar biasa!',
        rating: 4.5,
        day: DateTime(2023, 7, 14),
      ),
    ],
    openingHours: [
      OpeningHours(
        day: 'Sunday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Monday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Tuesday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Wednesday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Thursday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Friday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Saturday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
    ],
    ticketsAvailable: true,
  ),
  Trip(
    id: '2',
    title: 'Explore Raja Ampat 4D3N',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTJuY4_DUN56_QxOOK5uAuS5g51JbWGUMcQRG9yPFFCFbfGRjB5qCl6fwApWckwiX2LT4&usqp=CAU',
    summary:
        '''Jelajahi keindahan surga tropis Raja Ampat dengan snorkeling, diving, dan mengunjungi desa lokal.''',
    place: 'Raja Ampat, Papua Barat',
    address: 'Kabupaten Raja Ampat, Papua Barat, Indonesia',
    location: LatLng(-0.2333,130.5167),
    rating: 4.9,
    price: 5000000,
    ticketsAvailable: true,
    importantInformation: [
      'Siapkan alat snorkeling dan pakaian renang.',
      'Hormati budaya masyarakat lokal.',
      'Bawa kamera untuk mengabadikan momen di spot-spot terbaik.',
      'Gunakan tabir surya untuk melindungi kulit dari sinar matahari.',
      'Ikuti instruksi pemandu saat snorkeling dan diving.',
    ],
    highlight: [
      'Diving di salah satu spot terbaik dunia.',
      'Menyusuri keindahan Pulau Wayag.',
      'Berenang bersama ikan-ikan tropis di perairan jernih.',
      'Menikmati matahari terbenam dari atas bukit Piaynemo.',
      'Mengunjungi desa wisata Arborek dan berinteraksi dengan masyarakat lokal.',
    ],
    packages: [
      PricePackage(
        name: 'Luxury Package',
        price: 5000000,
        includes: ['Resort', 'Diving Gear', 'Guide', 'Boat Tour', 'All Meals'],
        excludes: ['Personal Expenses', 'Asuransi Perjalanan'],
      ),
      PricePackage(
        name: 'Standard Package',
        price: 4000000,
        includes: ['Hotel', 'Guide', 'Boat Tour'],
        excludes: ['Diving Gear', 'Personal Expenses'],
      ),
    ],
    reviews: [
      Review(
        user: 'Siti Aisyah',
        role: 'Solo Traveler',
        comment: 'Sungguh pengalaman tak terlupakan! Alamnya luar biasa.',
        rating: 5,
        day: DateTime(2023, 5, 10),
      ),
      Review(
        user: 'Andi Wijaya',
        role: 'Pasangan',
        comment: 'Pemandangan yang luar biasa, pelayanan yang ramah.',
        rating: 4.8,
        day: DateTime(2023, 7, 15),
      ),
    ],
    openingHours: [
      OpeningHours(
        day: 'Sunday',
        start: TimeOfDay(hour: 2, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Monday',
        start: TimeOfDay(hour: 2, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Tuesday',
        start: TimeOfDay(hour: 2, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Wednesday',
        start: TimeOfDay(hour: 2, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Thursday',
        start: TimeOfDay(hour: 2, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Friday',
        start: TimeOfDay(hour: 2, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Saturday',
        start: TimeOfDay(hour: 2, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
    ],
    photos: [
      'https://images.unsplash.com/photo-1596956854025-07d84dd37903?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHJhamElMjBhbXBhdHxlbnwwfHwwfHx8MA%3D%3D',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s'
    ],
  ),
  Trip(
    id: '3',
    title: 'Bali Adventure 5D4N',
    image:
        'https://images.unsplash.com/photo-1544644181-1484b3fdfc62?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    summary:
        '''Nikmati perjalanan seru ke Ubud, Tanah Lot, dan menikmati sunset di Uluwatu.''',
    place: 'Bali, Indonesia',
    address: 'Bali, Indonesia',
    location: LatLng(-8.3405,115.0920),
    rating: 4.7,
    price: 4200000,
    ticketsAvailable: true,
    importantInformation: [
      'Bawa pakaian yang nyaman untuk perjalanan panjang.',
      'Gunakan alas kaki yang nyaman saat berjalan di area wisata.',
      'Jangan lupa membawa kamera untuk mengabadikan momen.',
      'Hormati budaya dan adat setempat saat mengunjungi pura.',
    ],
    highlight: [
      'Menyaksikan pertunjukan tari Kecak di Uluwatu.',
      'Mengunjungi Monkey Forest di Ubud.',
      'Menikmati keindahan sawah terasering Tegalalang.',
      'Bermain air di Air Terjun Tegenungan.',
      'Berbelanja oleh-oleh khas Bali di Pasar Sukawati.',
    ],
    packages: [
      PricePackage(
        name: 'Regular Package',
        price: 4200000,
        includes: ['Transport', 'Hotel', 'Guide', 'Breakfast'],
        excludes: ['Personal Expenses', 'Makan Siang dan Malam'],
      ),
    ],
    reviews: [
      Review(
        user: 'I Made Wirawan',
        role: 'Solo Traveler',
        comment: 'Indah berada di kampung halaman sendiri.',
        rating: 5,
        day: DateTime(2023, 5, 10),
      ),
      Review(
        user: 'Andi Wijaya',
        role: 'Pasangan',
        comment: 'View yang indah, orang-orangnya ramah kaya akan budaya',
        rating: 4.8,
        day: DateTime(2023, 7, 15),
      ),
    ],
    openingHours: [
      OpeningHours(
        day: 'Sunday',
        start: TimeOfDay(hour: 5, minute: 0),
        end: TimeOfDay(hour: 23, minute: 0),
      ),
      OpeningHours(
        day: 'Monday',
        start: TimeOfDay(hour: 5, minute: 0),
        end: TimeOfDay(hour: 23, minute: 0),
      ),
      OpeningHours(
        day: 'Tuesday',
        start: TimeOfDay(hour: 5, minute: 0),
        end: TimeOfDay(hour: 23, minute: 0),
      ),
      OpeningHours(
        day: 'Wednesday',
        start: TimeOfDay(hour: 5, minute: 0),
        end: TimeOfDay(hour: 23, minute: 0),
      ),
      OpeningHours(
        day: 'Thursday',
        start: TimeOfDay(hour: 5, minute: 0),
        end: TimeOfDay(hour: 23, minute: 0),
      ),
      OpeningHours(
        day: 'Friday',
        start: TimeOfDay(hour: 5, minute: 0),
        end: TimeOfDay(hour: 23, minute: 0),
      ),
      OpeningHours(
        day: 'Saturday',
        start: TimeOfDay(hour: 5, minute: 0),
        end: TimeOfDay(hour: 23, minute: 0),
      ),
    ],
    photos: [
      'https://images.unsplash.com/photo-1542897644-e04428948020?q=80&w=1527&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1585302397841-b42e837d0d81?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1537953773345-d172ccf13cf1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ],
  ),
  Trip(
    id: '4',
    title: 'Opentrip 3D2N Jogjakarta Heritage Tour',
    image:
        'https://plus.unsplash.com/premium_photo-1700954824012-08ce5362e6c6?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    summary:
        '''Jogjakarta adalah kota dengan kekayaan budaya dan sejarah yang luar biasa. Perjalanan ini akan membawamu mengunjungi berbagai destinasi bersejarah dan alam yang memukau. 

      Kamu akan mengunjungi Candi Borobudur, candi Buddha terbesar di dunia yang merupakan salah satu keajaiban dunia. Selain itu, perjalanan ini juga mencakup kunjungan ke Candi Prambanan, kompleks candi Hindu yang megah dengan arsitektur khasnya.

      Selain wisata sejarah, kamu juga akan menikmati keindahan alam di Pantai Parangtritis, yang terkenal dengan pasir hitamnya dan ombak yang menawan. Perjalanan ini juga akan membawamu ke Tebing Breksi, bekas tambang batu kapur yang kini menjadi destinasi wisata dengan pemandangan luar biasa.

      Tak hanya itu, kamu juga akan menikmati suasana kota dengan mengunjungi Malioboro, pusat keramaian Jogjakarta yang terkenal dengan kuliner dan oleh-olehnya. Pengalaman yang tak terlupakan menantimu di Jogjakarta!''',
    place: 'Jogjakarta, Indonesia',
    address: 'Jogjakarta, Daerah Istimewa Yogyakarta, Indonesia',
    location: LatLng(-7.7956,110.3695),
    importantInformation: [
      'Peserta wajib dalam kondisi sehat dan siap untuk perjalanan wisata sejarah dan alam.',
      'Gunakan pakaian yang nyaman serta alas kaki yang sesuai untuk perjalanan jauh.',
      'Bawalah uang tunai secukupnya untuk belanja oleh-oleh di Malioboro.',
      'Patuhi aturan di setiap tempat wisata dan ikuti arahan dari pemandu tur.',
    ],
    highlight: [
      'Jelajahi Candi Borobudur, keajaiban dunia dan warisan budaya UNESCO.',
      'Nikmati kemegahan Candi Prambanan dengan arsitektur Hindu yang megah.',
      'Rasakan pesona Pantai Parangtritis dengan ombaknya yang khas.',
      'Kunjungi Tebing Breksi, tempat unik dengan pemandangan Jogja dari ketinggian.',
      'Jalan-jalan dan berbelanja di Malioboro, pusat wisata belanja Jogjakarta.',
    ],
    rating: 4.7,
    price: 2500000,
    photos: [
      'https://images.unsplash.com/photo-1551018612-9715965c6742?q=80&w=1475&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1566559532224-6d65e9fc0f37?q=80&w=1631&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ],
    packages: [
      PricePackage(
        name: 'Regular Package',
        price: 2500000,
        includes: ['Transportasi', 'Hotel', 'Guide', 'Makan 3x sehari'],
        excludes: ['Pengeluaran pribadi', 'Tiket masuk ke destinasi tertentu'],
      ),
    ],
    reviews: [
      Review(
        user: 'Siti Rahma',
        role: 'Keluarga',
        comment:
            'Perjalanan yang sangat menyenangkan! Panduan wisata ramah dan tempat-tempat yang dikunjungi luar biasa. Borobudur sangat megah!',
        rating: 5,
        day: DateTime(2023, 8, 21),
      ),
      Review(
        user: 'Andre Saputra',
        role: 'Solo Traveler',
        comment:
            'Malioboro sangat ramai, tapi tetap seru untuk belanja dan menikmati suasana Jogja. Wisata candi juga menarik, sangat informatif!',
        rating: 4.5,
        day: DateTime(2023, 8, 21),
      ),
    ],
    openingHours: [
      OpeningHours(
        day: 'Sunday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Monday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Tuesday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Wednesday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Thursday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Friday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
      OpeningHours(
        day: 'Saturday',
        start: TimeOfDay(hour: 7, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0),
      ),
    ],
    ticketsAvailable: true,
  ),
  Trip(
    id: '5',
    title: 'Opentrip 3D2N Wisata Seru di Batam by Travel Buddies',
    image:
        'https://images.unsplash.com/photo-1558438542-f6da3bf7d8f0?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    summary:
        '''Batam adalah destinasi wisata yang terkenal dengan pantainya yang indah, kuliner lezat, dan pusat perbelanjaan murah. Perjalanan ini akan membawamu menjelajahi berbagai tempat wisata menarik di Batam.

      Kamu akan mengunjungi Jembatan Barelang yang ikonik, serta Pantai Nongsa yang terkenal dengan pasir putihnya. Selain itu, kamu juga bisa menikmati wisata belanja di Nagoya Hill Shopping Mall, yang menawarkan berbagai barang dengan harga menarik.

      Tidak ketinggalan, wisata kuliner Batam juga sangat menggoda, dengan pilihan makanan laut segar dan khas Melayu yang lezat. Perjalanan ini akan memberikan pengalaman yang tak terlupakan di Pulau Batam!''',
    place: 'Batam, Kepulauan Riau',
    address: 'Batam, Kepulauan Riau, Indonesia',
    location: LatLng(1.0456,104.0305),
    importantInformation: [
      'Peserta wajib dalam kondisi sehat dan mematuhi aturan perjalanan. ',
      'Gunakan pakaian yang nyaman untuk perjalanan wisata pantai dan belanja.',
      'Siapkan uang tunai secukupnya karena tidak semua tempat menerima pembayaran digital.',
      'Ikuti arahan dari tour guide demi kenyamanan dan keselamatan perjalanan.'
    ],
    highlight: [
      'Mengunjungi ikon Batam, Jembatan Barelang yang megah.',
      'Bersantai di Pantai Nongsa dengan pasir putih yang indah.',
      'Menikmati wisata belanja di Nagoya Hill Shopping Mall.',
      'Menjelajahi kuliner khas Batam seperti seafood segar dan makanan Melayu.',
      'Cocok untuk wisata keluarga dan perjalanan santai.'
    ],
    rating: 4.7,
    price: 2500000,
    photos: [
      'https://images.unsplash.com/photo-1629643570024-e6062c016143?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ],
    packages: [
      PricePackage(
        name: 'Regular Package',
        price: 2500000,
        includes: ['Hotel', 'Transportasi', 'Guide', 'Makan 3x sehari'],
        excludes: ['Personal Expenses', 'Tiket wahana tambahan'],
      ),
    ],
    reviews: [
      Review(
        user: 'Siti Rahma',
        role: 'Solo Traveler',
        comment:
            'Perjalanan yang sangat menyenangkan! Pemandangan Pantai Nongsa luar biasa, dan makanan di Batam benar-benar enak!',
        rating: 5,
        day: DateTime(2023, 8, 20),
      ),
      Review(
        user: 'Ahmad Fauzan',
        role: 'Keluarga',
        comment:
            'Wisata keluarga yang luar biasa! Anak-anak sangat menikmati pantai dan kami juga puas berbelanja di Nagoya Hill.',
        rating: 4.5,
        day: DateTime(2023, 8, 22),
      ),
    ],
    openingHours: [
      OpeningHours(
        day: 'Sunday',
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Monday',
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Tuesday',
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Wednesday',
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Thursday',
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Friday',
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
      OpeningHours(
        day: 'Saturday',
        start: TimeOfDay(hour: 8, minute: 0),
        end: TimeOfDay(hour: 20, minute: 0),
      ),
    ],
    ticketsAvailable: true,
  ),
];
