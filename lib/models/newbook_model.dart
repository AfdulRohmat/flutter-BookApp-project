class NewBookModel {
  String image;

  NewBookModel(this.image);
}

var newBooksData = [
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
];

List<NewBookModel> newbooks =
    newBooksData.map((item) => NewBookModel(item['image'])).toList();
