class Portfolio {
  Portfolio({this.id, this.title, this.description, this.imageUrl});

  String imageUrl;
  String title;
  String description;
  int id;

  static List<Portfolio> portfolios = [
    Portfolio(
      id: 1,
      imageUrl: 'images/projects/sub_project_1.jpg',
      title: 'Bechtel (West nile Delta) ',
      description:
          "Install and Terminate network cable (UTP and Fiber Optics), Racks installation for about 12 Building ",
    ),
    Portfolio(
      id: 2,
      imageUrl: 'images/projects/sub_project_2.jpg',
      title: 'Alexandria Government (New Semouha) ',
      description:
          "Install and Terminate network cable (UTP and Fiber Optics), Racks installation for 1250 Nodes (6 Floors) ",
    ),
    Portfolio(
      id: 3,
      imageUrl: 'images/projects/sub_project_3.jpg',
      title: 'Alexandria Urology Hospital',
      description:
          "Install and Terminate network cable (UTP and Fiber Optics), Racks installation for 1250 Nodes ",
    ),
  ];
}
