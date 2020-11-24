class Portfolio {
  Portfolio({this.imageUrl, this. popImgUrl});

  String imageUrl;
  String  popImgUrl;

  static List<Portfolio> portfolios = [
    Portfolio(
      imageUrl: 'images/projects/sub_project_1.jpg',
       popImgUrl: 'images/projects/Project_1.jpg',
         
    ),
    Portfolio(
      imageUrl: 'images/projects/sub_project_2.jpg',
       popImgUrl: 'images/projects/Project_2.jpg',
    ),
    Portfolio(
      imageUrl: 'images/projects/sub_project_3.jpg',
       popImgUrl: 'images/projects/Project_3.jpg',
    ),

  ];
}
