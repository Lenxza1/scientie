class MenuModel {
  String name;
  String image;
  String desc;
  String foodPrice;

  MenuModel(
      {required this.name,
      required this.image,
      required this.desc,
      required this.foodPrice});

  static final List<MenuModel> menuListBetawi = [
    MenuModel(
        name: 'Laksa Betawi',
        image: 'assets/images/Laksa Betawi.jpg',
        desc:
            'Laksa Betawi merupakan makanan berkuah santan dengan bumbukuning dan berbagai bahan isian. Untuk isian laksa Betawi antara lainketupat atau lontong, tahu, bihun, suwiran daging ayam, tauge, telurrebus, dan berbagai bahan pelengkap.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Uduk',
        image: 'assets/images/Nasi Uduk.jpg',
        desc:
            'Nasi uduk merupakan salah satu masakan khas Nusantara yang dimasakdengan santan dan bumbu tertentu. Aroma nasinya yang wangi danpulen, membuat siapa saja yang memakan nasi uduk pasti ketagihan.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Gado - Gado',
        image: 'assets/images/Gado Gado.jpg',
        desc:
            'Gado gado merupakan makanan sehat yang terdiri dari macam-macamsayur rebus dan bahan pelengkap yang dicampur dengan bumbu kacang.Selain rasanya yang enak, resep dan cara membuat gado-gado tidaklahsulit karena bahannya sangat mudah didapat dan murah meriah.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Kuning',
        image: 'assets/images/Nasi Kuning.jpg',
        desc:
            'Nasi kuning merupakan makanan khas Indonesia yang umumnya disajikansaat perayaan tertentu seperti syukuran, hajatan, atau lainnya. Rasanyayang gurih, enak, dan kaya akan rempah-rempah membuat banyak oranggemar memakan nasi kuning.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Soto Betawi',
        image: 'assets/images/Soto Betawi.jpg',
        desc:
            'Soto Betawi merupakan salah satu jenis soto khas Nusantara yang palingdigemari. Berkuah putih dan cukup kental, soto Betawi ada yang terbuatdari santan kelapa atau susu. Tak ayal, menu ini identik dengan rasa gurih.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Ketoprak',
        image: 'assets/images/Ketoprak.jpeg',
        desc:
            'Ketoprak merupakan salah satu makanan tradisional khas Jakartayang sampai sekarang masih mudah kita jumpai. Makanan yang satu initerdiri dari irisan ketupat, tahu, bihun, tauge yang disiram dengan bumbusaus kacang dan disajikan dengan kerupuk, bawang goreng',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Kebuli',
        image: 'assets/images/Nasi Kebuli.jpeg',
        desc:
            'Nasi kebuli adalah hidangan nasi berbumbu yang bercitarasa gurih yangditemukan di Indonesia. Nasi ini dimasak bersama kaldu daging kambing,susu kambing, dan minyak samin, disajikan dengan daging kambing gorengdan kadang ditaburi dengan irisan kurma atau kismis.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Ulam',
        image: 'assets/images/Nasi Ulam.jpg',
        desc:
            'Nasi ulam adalah hidangan nasi yang dicampur berbagai bumbu dan rempah,khususnya daun pegagan atau kadang diganti daun kemangi, sayuran,dan berbagai bumbu, serta ditemani beberapa macam lauk-pauk.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Lontong Sayur',
        image: 'assets/images/Lontong Sayur.jpg',
        desc:
            'Lontong sayur merupakan lontong yang disiram dengan kuah santan kuning denganberbagai bahan isian dan pelengkap. Rasanya yang enak dan gurihmembuat lontong sayur cocok dijadikan sarapan. ',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Pecel Ayam',
        image: 'assets/images/Pecel.jpg',
        desc:
            'Pecel ayam merupakan salah satu makanan lezat yang mudah kita temui dipenjualpinggiran jalan ataupun dibanyak tempat makan. Walaupun namanya pecelayam, pecel ayam sendiri sebenarnya adalah ayam goreng yang disajikan lengkap dengan sambal dan lalapan.',
        foodPrice: 'Rp 10.000'),
  ];

  static final List<MenuModel> menuListPopular = [
    MenuModel(
        name: 'Oreo Cheesecake',
        image: 'assets/images/Oreo Cheesecake.jpg',
        desc:
            'Cheese cake oreo adalah salah satu jenis dessert yang cukup banyak digemari.Rasanya yang lezat dan cara membuatnya yang mudah membuatnya menjadi makananpenutup yang sering dipilih untuk disajikan dan disantap. Anak-anak kecil terutama,sangat menyukai dessert yang satu ini.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Liwet',
        image: 'assets/images/Nasi Liwet.jpg',
        desc:
            'Nasi liwet adalah hidangan nasi khas Indonesia yang dimasak dengan santan,kaldu ayam, dan rempah-rempah Nasi kukus biasanya dimasak dalam air, tetapi nasiliwet adalah nasi yang dimasak dengan santan, kaldu ayam, daun salam dan serai,sehingga memberikan nasi rasa yang kaya, aromatik, dan gurih.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Nugget Geprek',
        image: 'assets/images/Nasi Nugget Geprek.jpeg',
        desc:
            'Nugget merupakan salah satu jenis frozen food yang jadi andalan banyak orang.Makanan yang juga tergolong cepat saji ini digemari karena cara memasaknya yangsangat mudah. Cukup digoreng dan ditambah saus sambal saja, nugget sudah terasanikmat, apalagi ditemani dengan sepiring nasi hangat.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Kwetiau Goreng',
        image: 'assets/images/Kwetiau Goreng.jpg',
        desc:
            'Kwetiau goreng merupakan makanan adaptasi dari China yang sekarang sudah sangatpopuler di Indonesia. Cara memasaknya hampir sama seperti memasak mie goreng,hanya saja jenis mie yang digunakan berbeda. Mie kwetiau berbentuk tipis sepertipita dan kenyal.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Goreng Hongkong',
        image: 'assets/images/Nasi Goreng Hongkong.jpeg',
        desc:
            'Nasi goreng Hong Kong ini banyak ditawarkan di restoran. Bahkan kini banyak dijualsebagai makanan halal. Paduan bahan yang biasa dipakai adalah daging sapi irisatau cincang. Tetapi yang populer justru dengan paduan udang. Ikuti resep nasigoreng Hong Kong ini untuk membuatnya.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Massimo Spaghetti',
        image: 'assets/images/Massimo Spaghetti.jpg',
        desc:
            'Rasanya creamy karena penggunaan campuran telur dan permesan cheese untuk sausnya,ditambah lagi topping bacon yang banyak, semakin menyempurnakan rasa dan penampilannya.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Bento Katsu',
        image: 'assets/images/Bento Katsu.jpg',
        desc:
            'Paket Bento Lengkap berisi Chicken Katsu yang gurih dilengkapi dengan saus katsu khasjepang, Telur Dadar, Chicken Ball Soup, Fresh Salad, dan Nasi putih',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Ayam Saus Mentega',
        image: 'assets/images/Ayam Saus Mentega.jpg',
        desc:
            'Dari banyaknya olahan ayam, salah satu menu olahan ayam yang lezat, gurih, dan tidak pedasadalah ayam goreng mentega. Karena rasanya yang manis gurih, olahan ayamyang satu ini juga cocok untuk dikonsumsi anak-anak.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Cumi Cabe Hijau',
        image: 'assets/images/Nasi Cumi Cabe Hijau.jpg',
        desc:
            'Ada banyak sekali olahan cumi yang sangat lezat dan mudah dibuat. Salah satu olahan cumienak yang cukup sederhana dibuat yaitu cumi cabe ijo. Cumi cabe ijo merupakanmasakan tumis cumi biasa dengan banyak irisan cabai hijau. Tekstur cuminya yangkenyal dan bumbu cabe ijonya yang pedas, membuat siapa sajayang memakannya pasti akan ketagihan.',
        foodPrice: 'Rp 10.000'),
    MenuModel(
        name: 'Nasi Bakar Ayam',
        image: 'assets/images/Nasi Bakar Ayam.jpg',
        desc:
            'Nasi bakar merupakan nasi uduk yang diberi isian lalu dibungkus daun pisang dan dibakar.Rasanya yang khas dan wangi daun kemanginya membuat makanan yang satu ini begitumenggugah selera.',
        foodPrice: 'Rp 10.000'),
  ];
}

class MenuKelModel {
  String kel;
  String name1;
  String name2;
  String image1;
  String image2;

  MenuKelModel({
    required this.kel,
    required this.name1,
    required this.name2,
    required this.image1,
    required this.image2,
  });

  static final List<MenuKelModel> menuKelList = [
    MenuKelModel(
      kel: 'Kelompok 1',
      name1: 'Laksa Betawi',
      name2: 'Oreo Cheesecake',
      image1: 'assets/images/Laksa Betawi.jpg',
      image2: 'assets/images/Oreo Cheesecake.jpg',
    ),
    MenuKelModel(
      kel: 'Kelompok 2',
      name1: 'Nasi Uduk',
      name2: 'Nasi Liwet',
      image1: 'assets/images/Nasi Uduk.jpg',
      image2: 'assets/images/Nasi Liwet.jpg',
    ),
    MenuKelModel(
      kel: 'Kelompok 3',
      name1: 'Gado - Gado',
      name2: 'Nasi Nugget Geprek',
      image1: 'assets/images/Gado Gado.jpg',
      image2: 'assets/images/Nasi Nugget Geprek.jpeg',
    ),
    MenuKelModel(
      kel: 'Kelompok 4',
      name1: 'Nasi Kuning',
      name2: 'Kwetiau Goreng',
      image1: 'assets/images/Nasi Kuning.jpg',
      image2: 'assets/images/Kwetiau Goreng.jpg',
    ),
    MenuKelModel(
      kel: 'Kelompok 5',
      name1: 'Soto Betawi',
      name2: 'Nasi Goreng Hongkong',
      image1: 'assets/images/Soto Betawi.jpg',
      image2: 'assets/images/Nasi Goreng Hongkong.jpeg',
    ),
    MenuKelModel(
      kel: 'Kelompok 6',
      name1: 'Ketoprak',
      name2: 'Massimo Spaghetti',
      image1: 'assets/images/Ketoprak.jpeg',
      image2: 'assets/images/Massimo Spaghetti.jpg',
    ),
    MenuKelModel(
      kel: 'Kelompok 7',
      name1: 'Nasi Kebuli',
      name2: 'Bento Katsu',
      image1: 'assets/images/Nasi Kebuli.jpeg',
      image2: 'assets/images/Bento Katsu.jpg',
    ),
    MenuKelModel(
      kel: 'Kelompok 8',
      name1: 'Nasi Ulam',
      name2: 'Ayam Saus Mentega',
      image1: 'assets/images/Nasi Ulam.jpg',
      image2: 'assets/images/Ayam Saus Mentega.jpg',
    ),
    MenuKelModel(
      kel: 'Kelompok 9',
      name1: 'Lontong Sayur',
      name2: 'Nasi Cumi Cabe Hijau',
      image1: 'assets/images/Lontong Sayur.jpg',
      image2: 'assets/images/Nasi Cumi Cabe Hijau.jpg',
    ),
    MenuKelModel(
      kel: 'Kelompok 10',
      name1: 'Pecel Ayam',
      name2: 'Nasi Bakar Ayam',
      image1: 'assets/images/Pecel.jpg',
      image2: 'assets/images/Nasi Bakar Ayam.jpg',
    ),
  ];
}
