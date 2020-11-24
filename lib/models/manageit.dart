class MangeIT {
  MangeIT({this.imageUrl, this.webUrl});

  String imageUrl;
  String webUrl;

  static List<MangeIT> mangeIT = [
    MangeIT(
      imageUrl: 'images/it/consultation_assessment.jpg',
      webUrl: "https://www.pclink.com.eg/consultation-assessment/",
    ),
    MangeIT(
      imageUrl: 'images/it/customization_integration.jpg',
      webUrl: "https://www.pclink.com.eg/customization-integration/",
    ),
    MangeIT(
      imageUrl: 'images/it/hardware_maintenance.jpg',
      webUrl: "https://www.pclink.com.eg/hardware-maintenance/",
    ),
    MangeIT(
      imageUrl: 'images/it/installation_implementation.jpg',
      webUrl: "https://www.pclink.com.eg/installation-implementation/",
    ),
    MangeIT(
      imageUrl: 'images/it/solutions_engineering.jpg',
      webUrl: "https://www.pclink.com.eg/solution-engineering/",
    ),
    MangeIT(
      imageUrl: 'images/it/support_services.jpg',
      webUrl: 'https://www.pclink.com.eg/support-services/',
    ),
  ];
}
