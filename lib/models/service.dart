import 'package:flutter/material.dart';

class Service {
  Service({ this.title, this.webUrl});

  String title;
  String webUrl;

  static List<Service> services = [
    Service( title: "ERP ", webUrl:"https://www.pclink.com.eg/enterprise-resource-planning-erp/"),
    Service( title: "CRM", webUrl:"https://www.pclink.com.eg/private-cloud-solution/"),
    Service( title: "IT Infrastructure", webUrl:"https://www.pclink.com.eg/it-infrastructure/"),
    Service( title: "Private Cloud Solutions", webUrl:"https://www.pclink.com.eg/private-cloud-solution/"),
    Service( title: "Client Image Management", webUrl:"https://www.pclink.com.eg/client-image-management-2/"),
  ];
}
