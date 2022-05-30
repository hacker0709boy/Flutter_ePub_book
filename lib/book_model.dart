class Book {
  final int id;
  final String name;
  final String rating;
  final String image;
  final String description;
  final String mindescription;
  final String epub;
  final String urlepub;
  Book(
      {required this.id,
      required this.name,
      required this.rating,
      required this.image,
      required this.description,
      required this.mindescription,
      required this.epub,
      required this.urlepub});
}

List<Book> newbooks = [
  Book(
      id: 1,
      name: "Unity",
      rating: "5.0",
      image: "assets/images/book11.png",
      description:
          "(An eBook reader can be a software application for use on a computer, such as Microsoft's free Reader application, or a book-sized computer that is used solely as a reading device, such as Nuvomedia's Rocket eBook.) Users can purchase an eBook on diskette or CD, but the most popular method of getting an eBook is to purchase a downloadable file of the eBook (or other reading material) from a Web site (such as Barnes and Noble) to be read from the user's computer or reading device. Generally, an eBook can be downloaded in five minutes or less. Although it is not necessary to use a reader application or device in order to read an Ebook (most books can be read as PDF files), they are popular because they enable options similar to those of a paper book - readers can bookmark pages, make notes, highlight passages, and save selected text.",
      mindescription: "Mini description",
      epub: "assets/book.epub",
      urlepub:
          "https://firebasestorage.googleapis.com/v0/b/download-file-52e79.appspot.com/o/Files%2F2016%20Ceylan%20Proje.pdf?alt=media&token=98d1826a-e594-40a7-829a-d190c3fe293c"),
  Book(
      id: 2,
      name: "The Smart little Bird",
      rating: "4.7",
      image: "assets/images/book22.png",
      description:
          "(An eBook reader can be a software application for use on a computer, such as Microsoft's free Reader application, or a book-sized computer that is used solely as a reading device, such as Nuvomedia's Rocket eBook.) Users can purchase an eBook on diskette or CD, but the most popular method of getting an eBook is to purchase a downloadable file of the eBook (or other reading material) from a Web site (such as Barnes and Noble) to be read from the user's computer or reading device. Generally, an eBook can be downloaded in five minutes or less. Although it is not necessary to use a reader application or device in order to read an Ebook (most books can be read as PDF files), they are popular because they enable options similar to those of a paper book - readers can bookmark pages, make notes, highlight passages, and save selected text.",
      mindescription: "Mini description",
      epub: "assets/book.epub",
      urlepub:
          "https://firebasestorage.googleapis.com/v0/b/download-file-52e79.appspot.com/o/Files%2F2016%20Ceylan%20Proje.pdf?alt=media&token=98d1826a-e594-40a7-829a-d190c3fe293c"),
  Book(
      id: 3,
      name: "The King and Blacksmith",
      rating: "4.6",
      image: "assets/images/book22.png",
      description:
          "(An eBook reader can be a software application for use on a computer, such as Microsoft's free Reader application, or a book-sized computer that is used solely as a reading device, such as Nuvomedia's Rocket eBook.) Users can purchase an eBook on diskette or CD, but the most popular method of getting an eBook is to purchase a downloadable file of the eBook (or other reading material) from a Web site (such as Barnes and Noble) to be read from the user's computer or reading device. Generally, an eBook can be downloaded in five minutes or less. Although it is not necessary to use a reader application or device in order to read an Ebook (most books can be read as PDF files), they are popular because they enable options similar to those of a paper book - readers can bookmark pages, make notes, highlight passages, and save selected text.",
      mindescription: "Mini description",
      epub: "assets/book.epub",
      urlepub:
          "https://firebasestorage.googleapis.com/v0/b/download-file-52e79.appspot.com/o/Files%2F2016%20Ceylan%20Proje.pdf?alt=media&token=98d1826a-e594-40a7-829a-d190c3fe293c"),
  Book(
      id: 4,
      name: "The Loss of Trust",
      rating: "4.9",
      image: "assets/images/book3.png",
      description:
          "(An eBook reader can be a software application for use on a computer, such as Microsoft's free Reader application, or a book-sized computer that is used solely as a reading device, such as Nuvomedia's Rocket eBook.) Users can purchase an eBook on diskette or CD, but the most popular method of getting an eBook is to purchase a downloadable file of the eBook (or other reading material) from a Web site (such as Barnes and Noble) to be read from the user's computer or reading device. Generally, an eBook can be downloaded in five minutes or less. Although it is not necessary to use a reader application or device in order to read an Ebook (most books can be read as PDF files), they are popular because they enable options similar to those of a paper book - readers can bookmark pages, make notes, highlight passages, and save selected text.",
      mindescription: "Mini description",
      epub: "assets/book.epub",
      urlepub:
          "https://firebasestorage.googleapis.com/v0/b/download-file-52e79.appspot.com/o/Files%2F2016%20Ceylan%20Proje.pdf?alt=media&token=98d1826a-e594-40a7-829a-d190c3fe293c"),
  Book(
      id: 5,
      name: "The Boastful LION",
      rating: "4.9",
      image: "assets/images/book4.png",
      description:
          "(An eBook reader can be a software application for use on a computer, such as Microsoft's free Reader application, or a book-sized computer that is used solely as a reading device, such as Nuvomedia's Rocket eBook.) Users can purchase an eBook on diskette or CD, but the most popular method of getting an eBook is to purchase a downloadable file of the eBook (or other reading material) from a Web site (such as Barnes and Noble) to be read from the user's computer or reading device. Generally, an eBook can be downloaded in five minutes or less. Although it is not necessary to use a reader application or device in order to read an Ebook (most books can be read as PDF files), they are popular because they enable options similar to those of a paper book - readers can bookmark pages, make notes, highlight passages, and save selected text.",
      mindescription: "Mini description",
      epub: "assets/book.epub",
      urlepub:
          "https://firebasestorage.googleapis.com/v0/b/download-file-52e79.appspot.com/o/Files%2F2016%20Ceylan%20Proje.pdf?alt=media&token=98d1826a-e594-40a7-829a-d190c3fe293c"),
  Book(
      id: 6,
      name: "Promise",
      rating: "5.0",
      image: "assets/images/book5.png",
      description:
          "(An eBook reader can be a software application for use on a computer, such as Microsoft's free Reader application, or a book-sized computer that is used solely as a reading device, such as Nuvomedia's Rocket eBook.) Users can purchase an eBook on diskette or CD, but the most popular method of getting an eBook is to purchase a downloadable file of the eBook (or other reading material) from a Web site (such as Barnes and Noble) to be read from the user's computer or reading device. Generally, an eBook can be downloaded in five minutes or less. Although it is not necessary to use a reader application or device in order to read an Ebook (most books can be read as PDF files), they are popular because they enable options similar to those of a paper book - readers can bookmark pages, make notes, highlight passages, and save selected text.",
      mindescription: "Mini description",
      epub: "assets/book.epub",
      urlepub:
          "https://firebasestorage.googleapis.com/v0/b/download-file-52e79.appspot.com/o/Files%2F2016%20Ceylan%20Proje.pdf?alt=media&token=98d1826a-e594-40a7-829a-d190c3fe293c"),
  Book(
      id: 7,
      name: "The Best Plant",
      rating: "4.5",
      image: "assets/images/book6.png",
      description:
          "(An eBook reader can be a software application for use on a computer, such as Microsoft's free Reader application, or a book-sized computer that is used solely as a reading device, such as Nuvomedia's Rocket eBook.) Users can purchase an eBook on diskette or CD, but the most popular method of getting an eBook is to purchase a downloadable file of the eBook (or other reading material) from a Web site (such as Barnes and Noble) to be read from the user's computer or reading device. Generally, an eBook can be downloaded in five minutes or less. Although it is not necessary to use a reader application or device in order to read an Ebook (most books can be read as PDF files), they are popular because they enable options similar to those of a paper book - readers can bookmark pages, make notes, highlight passages, and save selected text.",
      mindescription: "Mini description",
      epub: "assets/book.epub",
      urlepub:
          "https://firebasestorage.googleapis.com/v0/b/download-file-52e79.appspot.com/o/Files%2F2016%20Ceylan%20Proje.pdf?alt=media&token=98d1826a-e594-40a7-829a-d190c3fe293c"),
  Book(
      id: 8,
      name: "Warrior",
      rating: "4.7",
      image: "assets/images/book8.png",
      description:
          "(An eBook reader can be a software application for use on a computer, such as Microsoft's free Reader application, or a book-sized computer that is used solely as a reading device, such as Nuvomedia's Rocket eBook.) Users can purchase an eBook on diskette or CD, but the most popular method of getting an eBook is to purchase a downloadable file of the eBook (or other reading material) from a Web site (such as Barnes and Noble) to be read from the user's computer or reading device. Generally, an eBook can be downloaded in five minutes or less. Although it is not necessary to use a reader application or device in order to read an Ebook (most books can be read as PDF files), they are popular because they enable options similar to those of a paper book - readers can bookmark pages, make notes, highlight passages, and save selected text.",
      mindescription: "Mini description",
      epub: "assets/book.epub",
      urlepub:
          "https://firebasestorage.googleapis.com/v0/b/download-file-52e79.appspot.com/o/Files%2F2016%20Ceylan%20Proje.pdf?alt=media&token=98d1826a-e594-40a7-829a-d190c3fe293c")
];
