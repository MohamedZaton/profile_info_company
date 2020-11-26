class MangeIT {
  MangeIT({this.title , this.imageUrl, this.webUrl});
  String title ;
  String imageUrl;
  String webUrl;

  static List<MangeIT> mangeITs = [
    MangeIT(
      title: "Consultation Assessment",
      imageUrl: 'images/it/consultation_assessment.jpg',
      webUrl: "https://www.pclink.com.eg/consultation-assessment/",
     ),
    MangeIT(
      title: "Customization Integration",
      imageUrl: 'images/it/customization_integration.jpg',
      webUrl: "https://www.pclink.com.eg/customization-integration/",
    ),
    MangeIT(
      title: "Hardware Maintenance",
      imageUrl: 'images/it/hardware_maintenance.jpg',
      webUrl: "https://www.pclink.com.eg/hardware-maintenance/",
    ),
    MangeIT(
      title: "Installation Implementation",
      imageUrl: 'images/it/installation_implementation.jpg',
      webUrl: "https://www.pclink.com.eg/installation-implementation/",
    ),
    MangeIT(
      title:"Solutions Engineering",
      imageUrl:'images/it/solutions_engineering.jpg',
      webUrl:"https://www.pclink.com.eg/solution-engineering/",
    ),
    MangeIT(
      title: "Support Services",
      imageUrl: 'images/it/support_services.png',
      webUrl: 'https://www.pclink.com.eg/support-services/',
    ),
  ];
}
