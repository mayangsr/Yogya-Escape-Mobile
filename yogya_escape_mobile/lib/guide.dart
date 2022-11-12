import 'package:flutter/material.dart';

class Guide {
  String nama;
  String desc;
  String imgUrl;

  Guide({required this.nama, required this.desc, required this.imgUrl});
}

List<Guide> guideList = [
  Guide(
      nama: 'Lee Haechan',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl: 'https://img.wattpad.com/cover/259152532-512-k23115.jpg'),
  Guide(
      nama: 'Lee Tae Yong',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEUNu6PaIAEXwyp?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Moon Tae Il',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEUosfFacAAGptp?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Johny',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEkBE6EaMAEY04c?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Nakamoto Yuta',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEkBLqwacAItlXP?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Qian Kun',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEZy8xVaQAAS59I?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Kim Dong Young',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEUo0_FaAAIPkl2?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Chittaphon Leechaiyapornkul',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEjYiGPaQAEf0We?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Jaehyun',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'data:image/jpeg;base64,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'),
  Guide(
      nama: 'Dong Si Cheng',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/EnmKjnzUUAAAsSr?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Kim Jung Woo',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEZy0EoakAA0bFp?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Lucas',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/EnmGM98VcAE_BYT?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Mark Lee',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEkA80waMAA_ISL?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Xiaojun',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEZygVNaUAEVATh?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Hendery',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEe4qH7aMAAFQen?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Huang Ren Jun',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEe46vOaMAAkSin?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Lee Je No',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEZNqa_aIAIsD5a?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Na Jae Min',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEUoMpVaQAATqM4?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Liu YangYang',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEUohrwakAEzAVH?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Osaki Shotaro',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEe5CokaIAEzZe8?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Jung Sung Chan',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEkBTA9agAIxElL?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Zhong Chen Le',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEZyq5EaAAI2MFk?format=jpg&name=4096x4096'),
  Guide(
      nama: 'Park Ji Sung',
      desc:
          'Beliau merupakan tour guide yang baik, ramah, dan dikenal murah senyum. Beliau sering melakukan guide di area Kota Yogyakarta, seperti Malioboro dan sekitarnya. Beliau juga pandai menggunakan 4 bahasa asing.',
      imgUrl:
          'https://pbs.twimg.com/media/FEUoY20aIAAYMao?format=jpg&name=4096x4096'),
];
