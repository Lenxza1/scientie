class MenuModel {
  String name;
  String image;
  String desc;
  String foodPrice;
  String jenis;

  MenuModel({
    required this.name,
    required this.image,
    required this.desc,
    required this.foodPrice,
    required this.jenis,
  });

  static final List<MenuModel> menuListBetawi = [
    MenuModel(
      name: 'Laksa Betawi',
      image: 'assets/images/Laksa Betawi.jpg',
      desc:
          'Laksa Betawi merupakan makanan berkuah santan dengan bumbu kuning dan berbagai bahan isian. Untuk isian laksa Betawi antara lain ketupat atau lontong, tahu, bihun, suwiran daging ayam, tauge, telur rebus, dan berbagai bahan pelengkap.',
      foodPrice: 'Rp 15.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Nasi Uduk',
      image: 'assets/images/Nasi Uduk.jpg',
      desc:
          'Nasi uduk merupakan salah satu masakan khas Nusantara yang dimasak dengan santan dan bumbu tertentu. Aroma nasinya yang wangi dan pulen, membuat siapa saja yang memakan nasi uduk pasti ketagihan.',
      foodPrice: 'Rp 11.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Gado - Gado',
      image: 'assets/images/Gado Gado.jpg',
      desc:
          'Gado gado merupakan makanan sehat yang terdiri dari macam-macam sayur rebus dan bahan pelengkap yang dicampur dengan bumbu kacang.Selain rasanya yang enak, resep dan cara membuat gado-gado tidaklah sulit karena bahannya sangat mudah didapat dan murah meriah.',
      foodPrice: 'Rp 13.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Nasi Kuning',
      image: 'assets/images/Nasi Kuning.jpg',
      desc:
          'Nasi kuning merupakan makanan khas Indonesia yang umumnya disajikan saat perayaan tertentu seperti syukuran, hajatan, atau lainnya. Rasanya yang gurih, enak, dan kaya akan rempah-rempah membuat banyak orang gemar memakan nasi kuning.',
      foodPrice: 'Rp 10.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Soto Betawi',
      image: 'assets/images/Soto Betawi.jpg',
      desc:
          'Soto Betawi merupakan salah satu jenis soto khas Nusantara yang paling digemari. Berkuah putih dan cukup kental, soto Betawi ada yang terbuat dari santan kelapa atau susu. Tak ayal, menu ini identik dengan rasa gurih.',
      foodPrice: 'Rp 15.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Ketoprak',
      image: 'assets/images/Ketoprak.jpeg',
      desc:
          'Ketoprak merupakan salah satu makanan tradisional khas Jakarta yang sampai sekarang masih mudah kita jumpai. Makanan yang satu ini terdiri dari irisan ketupat, tahu, bihun, tauge yang disiram dengan bumbu saus kacang dan disajikan dengan kerupuk, bawang goreng',
      foodPrice: 'Rp 10.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Nasi Kebuli',
      image: 'assets/images/Nasi Kebuli.jpeg',
      desc:
          'Nasi kebuli adalah hidangan nasi berbumbu yang bercita rasa gurih yang ditemukan di Indonesia. Nasi ini dimasak bersama kaldu daging kambing,susu kambing, dan minyak samin, disajikan dengan daging kambing goreng dan kadang ditaburi dengan irisan kurma atau kismis.',
      foodPrice: 'Rp 15.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Nasi Ulam',
      image: 'assets/images/Nasi Ulam.jpg',
      desc:
          'Nasi ulam adalah hidangan nasi yang dicampur berbagai bumbu dan rempah,khususnya daun pegagan atau kadang diganti daun kemangi, sayuran,dan berbagai bumbu, serta ditemani beberapa macam lauk-pauk.',
      foodPrice: 'Rp 12.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Lontong Sayur',
      image: 'assets/images/Lontong Sayur.jpg',
      desc:
          'Lontong sayur merupakan lontong yang disiram dengan kuah santan kuning dengan berbagai bahan isian dan pelengkap. Rasanya yang enak dan gurih membuat lontong sayur cocok dijadikan sarapan. ',
      foodPrice: 'Rp 12.000',
      jenis: "Betawi",
    ),
    MenuModel(
      name: 'Pecel',
      image: 'assets/images/Pecel.jpg',
      desc:
          'Pecel merupakan makanan yang terdiri dari sayur yang direbus dan lauk yang dihidangkan dengan alas yang berbeda-beda sesuai kota asal pecel, misalnya piring lidi yang disebut ingke, pincuk, atau tampah bambu.',
      foodPrice: 'Rp 10.000',
      jenis: "Betawi",
    ),
  ];

  static final List<MenuModel> menuListPopular = [
    MenuModel(
      name: 'Nasi Kulit',
      image: 'assets/images/Nasi Kulit.jpg',
      desc:
          'Kulit ayam goreng yang dimaksud adalah kulit ayam berbumbu dengan balutan tepung dan digoreng hingga matang dan garing. Proses menggoreng butuh minyak dengan suhu panas untuk membuat teksturnya jadi renyah. Semakin populer, nasi kulit ayam crispy berbalut sambal bawang kini diolah dengan berbagai variasi pedas yang menggugah selera.',
      foodPrice: 'Rp 15.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Nasi Liwet Ayam Geprek',
      image: 'assets/images/Nasi Liwet.jpg',
      desc:
          'Nasi liwet adalah hidangan nasi khas Indonesia yang dimasak dengan santan,kaldu ayam, dan rempah-rempah Nasi kukus biasanya dimasak dalam air, tetapi nasiliwet adalah nasi yang dimasak dengan santan, kaldu ayam, daun salam dan serai,sehingga memberikan nasi rasa yang kaya, aromatik, dan gurih.',
      foodPrice: 'Rp 14.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Ayam Sambal Matah',
      image: 'assets/images/Ayam Sambal Matah.jpg',
      desc:
          'Ayam sambal matah merupakan olahan ayam yang memakai topping sambal matah diatasnya. Sambal matah adalah sambal tradisional Bali yang dapat ditemukan di seluruh daerah di Provinsi Bali. matah memiliki arti mentah. Sambal matah merupakan sambal yang berbahan mentah tanpa digerus (diulek).',
      foodPrice: 'Rp 15.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Chinese mie',
      image: 'assets/images/Chinese Mie.jpg',
      desc:
          'Chinese mie, olahan mie yang berasal dari tionghoa dan memiliki cita rasa gurih dan manis karena olahan rempah" nya dan kecap yang menjadi ciri khas Chinese food biasa bertoping daging"an bahkan seafood',
      foodPrice: 'Rp 10.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Nasi Goreng Hongkong',
      image: 'assets/images/Nasi Goreng Hongkong.jpeg',
      desc:
          'Nasi goreng Hong Kong ini banyak ditawarkan di restoran. Bahkan kini banyak dijualsebagai makanan halal. Paduan bahan yang biasa dipakai adalah daging sapi irisatau cincang. Tetapi yang populer justru dengan paduan udang. Ikuti resep nasigoreng Hong Kong ini untuk membuatnya.',
      foodPrice: 'Rp 15.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Massimo Spaghetti',
      image: 'assets/images/Massimo Spaghetti.jpg',
      desc:
          'Rasanya creamy karena penggunaan campuran telur dan permesan cheese untuk sausnya,ditambah lagi topping bacon yang banyak, semakin menyempurnakan rasa dan penampilannya.',
      foodPrice: 'Rp 10.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Bento Katsu',
      image: 'assets/images/Bento Katsu.jpg',
      desc:
          'Paket Bento Lengkap berisi Chicken Katsu yang gurih dilengkapi dengan saus katsu khasjepang, Telur Dadar, Chicken Ball Soup, Fresh Salad, dan Nasi putih',
      foodPrice: 'Rp 15.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Ayam Saus Mentega',
      image: 'assets/images/Ayam Saus Mentega.jpg',
      desc:
          'Dari banyaknya olahan ayam, salah satu menu olahan ayam yang lezat, gurih, dan tidak pedasadalah ayam goreng mentega. Karena rasanya yang manis gurih, olahan ayamyang satu ini juga cocok untuk dikonsumsi anak-anak.',
      foodPrice: 'Rp 15.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Nasi Cumi Cabe Hijau',
      image: 'assets/images/Nasi Cumi Cabe Hijau.jpg',
      desc:
          'Ada banyak sekali olahan cumi yang sangat lezat dan mudah dibuat. Salah satu olahan cumienak yang cukup sederhana dibuat yaitu cumi cabe ijo. Cumi cabe ijo merupakanmasakan tumis cumi biasa dengan banyak irisan cabai hijau. Tekstur cuminya yangkenyal dan bumbu cabe ijonya yang pedas, membuat siapa sajayang memakannya pasti akan ketagihan.',
      foodPrice: 'Rp 15.000',
      jenis: "Popular",
    ),
    MenuModel(
      name: 'Nasi Bakar Ayam',
      image: 'assets/images/Nasi Bakar Ayam.jpg',
      desc:
          'Nasi bakar merupakan nasi uduk yang diberi isian lalu dibungkus daun pisang dan dibakar.Rasanya yang khas dan wangi daun kemanginya membuat makanan yang satu ini begitumenggugah selera.',
      foodPrice: 'Rp 15.000',
      jenis: "Popular",
    ),
  ];
}

class MenuKelModel {
  String kel;
  String name1;
  String name2;
  String image1;
  String image2;
  String noKel;

  MenuKelModel(
      {required this.kel,
      required this.name1,
      required this.name2,
      required this.image1,
      required this.image2,
      required this.noKel});

  static final List<MenuKelModel> menuKelList = [
    MenuKelModel(
        kel: 'Kelompok 1',
        name1: 'Laksa Betawi',
        name2: 'Nasi Kulit',
        image1: 'assets/images/Laksa Betawi.jpg',
        image2: 'assets/images/Nasi Kulit.jpg',
        noKel: '6287774120889'),
    MenuKelModel(
        kel: 'Kelompok 2',
        name1: 'Nasi Uduk',
        name2: 'Nasi Liwet Ayam Geprek',
        image1: 'assets/images/Nasi Uduk.jpg',
        image2: 'assets/images/Nasi Liwet.jpg',
        noKel: '6285155422780'),
    MenuKelModel(
        kel: 'Kelompok 3',
        name1: 'Gado - Gado',
        name2: 'Ayam Sambal Matah',
        image1: 'assets/images/Gado Gado.jpg',
        image2: 'assets/images/Ayam Sambal Matah.jpg',
        noKel: '6285888828190'),
    MenuKelModel(
        kel: 'Kelompok 4',
        name1: 'Nasi Kuning',
        name2: 'Chinese Mie',
        image1: 'assets/images/Nasi Kuning.jpg',
        image2: 'assets/images/Chinese Mie.jpg',
        noKel: '628988884840'),
    MenuKelModel(
        kel: 'Kelompok 5',
        name1: 'Soto Betawi',
        name2: 'Nasi Goreng Hongkong',
        image1: 'assets/images/Soto Betawi.jpg',
        image2: 'assets/images/Nasi Goreng Hongkong.jpeg',
        noKel: '6281804834352'),
    MenuKelModel(
        kel: 'Kelompok 6',
        name1: 'Ketoprak',
        name2: 'Massimo Spaghetti',
        image1: 'assets/images/Ketoprak.jpeg',
        image2: 'assets/images/Massimo Spaghetti.jpg',
        noKel: '6281282698474'),
    MenuKelModel(
        kel: 'Kelompok 7',
        name1: 'Nasi Kebuli',
        name2: 'Bento Katsu',
        image1: 'assets/images/Nasi Kebuli.jpeg',
        image2: 'assets/images/Bento Katsu.jpg',
        noKel: '62895373238694'),
    MenuKelModel(
        kel: 'Kelompok 8',
        name1: 'Nasi Ulam',
        name2: 'Ayam Saus Mentega',
        image1: 'assets/images/Nasi Ulam.jpg',
        image2: 'assets/images/Ayam Saus Mentega.jpg',
        noKel: '6288210738573'),
    MenuKelModel(
        kel: 'Kelompok 9',
        name1: 'Lontong Sayur',
        name2: 'Nasi Cumi Cabe Hijau',
        image1: 'assets/images/Lontong Sayur.jpg',
        image2: 'assets/images/Nasi Cumi Cabe Hijau.jpg',
        noKel: '6281284638882'),
    MenuKelModel(
        kel: 'Kelompok 10',
        name1: 'Pecel',
        name2: 'Nasi Bakar Ayam',
        image1: 'assets/images/Pecel.jpg',
        image2: 'assets/images/Nasi Bakar Ayam.jpg',
        noKel: '6289501979945'),
  ];
}
