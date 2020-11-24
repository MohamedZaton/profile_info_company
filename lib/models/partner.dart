class Partner {
  Partner({this.webUrl, this.imageUrl});
  String webUrl;
  String imageUrl;
  static List<Partner> partners = [
    Partner(
      imageUrl: 'images/partner/cisco.png',
      webUrl: 'https://www.pclink.com.eg/cisco/',
    ),
    Partner(
      webUrl: 'https://www.pclink.com.eg/data-center/#',
      imageUrl: 'images/partner/Fortinet_logo.png',
    ),
    Partner(
      webUrl: 'https://www.pclink.com.eg/huawei/',
      imageUrl: 'images/partner/huawei_logo.png',
    ),
    Partner(
      imageUrl: 'images/partner/microsoft_logo.png',
      webUrl: 'https://www.pclink.com.eg/microsoft-software-2/',
    ),
    Partner(
      imageUrl: 'images/partner/veeam_logo.png',
      webUrl: 'https://www.pclink.com.eg/veeam-parnter-egypt/',
    ),
    Partner(
      imageUrl: 'images/partner/Veritas.jpg',
      webUrl: 'https://www.pclink.com.eg/veritas-technologies/',
    ),
    Partner(
      imageUrl: 'images/partner/Sophos.png',
      webUrl: 'https://www.pclink.com.eg/sophos/',
    ),
  ];
}
