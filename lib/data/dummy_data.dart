import '../models/trip_model.dart';

List<Trip> dummyTrips = [
  Trip(
    id: '1',
    title: 'Opentrip 3D2N Labuan Bajo - Komodo by Travel Buddies',
    image: 'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2021/03/01/19a67468-e5bd-49e2-91cd-e4cebc22998d-1614577409368-09dd002fe8bd9fccba4150dbc58499cc.jpg',
    summary: '''Impian para pelancong ketika berada di Indonesia adalah pelesiran ke Labuan Bajo. Desa di Provinsi Nusa Tenggara Timur ini pun memiliki destinasi wisata yang apik dan ciamik, mulai dari wisata sejarah, budaya, hingga panorama alam. Banyak destinasi wisata yang bisa kamu kunjungi. Salah satu daya tarik Labuan Bajo adalah kawasan habitat hewan endemik, yakni Komodo yang berada di Taman Nasional Komodo. Tak pelak, banyak pelancong berlomba-lomba berkunjung melihat indahnya NTT. Soalnya, Pulau Komodo merupakan habitat asli binatang purba komodo bernaung.
                Selain itu ada Pink Beach sebagai pesona pantai surga di Labuan Bajo. Pantai ini disebut Pink Beach karena pasirnya yang berwarna pink, berasal dari alga dan serpihan karang berwarna merah yang bercampur dengan pasir putih. Selain keindahan pantainya, Pink Beach juga terkenal dengan kehidupan bawah lautnya yang cantik sehingga cocok untuk snorkeling atau diving.
                Tak hanya Taman Nasional Komodo dan Pink Beach, kamu akan mengunjungi Taka Makassar yang merupakan pulau timbul di antara Pulau Padar dan pulau-pulau lainnya. Hal yang menarik dari Taka Makassar adalah gugusan terumbu karang dan spot diving serta snorkeling. Masih banyak deh yang kamu kunjungi, yakni Manta Point Labuan Bajo, Pulau Padar, dan Pulau Kanawa lewat tur ini.
                Beli tiket tempat wisata di tiket.com untuk kamu yang ingin pergi berlibur ke wahana-wahana menarik di Labuan Bajo. Instal aplikasi tiket.com, dan dapatkan berbagai penawaran menarik setiap harinya!
             ''',
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
        includes: ['Boat', 'Hotel', 'Guide'],
        excludes: ['Personal Expenses'],
      ),
    ],
    reviews: [
      Review(user: 'Frederick Roivaldo Ginting', comment: 'kemana mana dekat lokasinya', rating: 5),
      Review(user: 'CM', comment: 'Nice trip with new pandawa ship. The food amazing, toilet was clean, and karaoke all the time. Crew’s hospitality was great for made all guest feeling like home to live on boat.', rating: 4.5),
    ],
  ),
  Trip(
    id: '2',
    title: 'Private Trip Labuan Bajo',
    image: 'https://source.unsplash.com/600x400/?labuanbajo',
    summary: 'Sail around the beautiful Komodo Islands.',
    rating: 4.7,
    price: 5000000,
    photos: [
      'https://source.unsplash.com/600x400/?komodo',
      'https://source.unsplash.com/600x400/?sailing',
    ],
    packages: [
      PricePackage(
        name: 'Exclusive Package',
        price: 5000000,
        includes: ['Boat', 'Meals', 'Guide'],
        excludes: ['Flight Tickets'],
      ),
    ],
    reviews: [
      Review(user: 'Alice', comment: 'Once in a lifetime experience.', rating: 5),
      Review(user: 'Bob', comment: 'Highly recommended!', rating: 4.8),
    ],
  ),
];
