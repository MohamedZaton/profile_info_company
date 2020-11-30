import 'package:flutter/material.dart';

class BusinessService {
  BusinessService({ this.title,this.imageUrl, this.webUrl});

  String title;
  String webUrl;
  String imageUrl;

  static List<BusinessService> businessServices = [
    BusinessService( title: "CRM",imageUrl:'images/solution/crm_l.jpg' , webUrl:"https://www.pclink.com.eg/private-cloud-solution/"),
    BusinessService( title: "ERP ",imageUrl:'images/solution/erp.jpg',webUrl:"https://www.pclink.com.eg/enterprise-resource-planning-erp/"),
    BusinessService( title: "IT Infrastructure",imageUrl:'images/solution/infra.jpg'  , webUrl:"https://www.pclink.com.eg/it-infrastructure/"),
    BusinessService( title: "Private Cloud Solutions",imageUrl:'images/solution/cloud.jpg'  , webUrl:"https://www.pclink.com.eg/private-cloud-solution/"),
    BusinessService( title: "Client Image Management",imageUrl:'images/solution/image mange.jpg'  , webUrl:"https://www.pclink.com.eg/client-image-management-2/"),
  ];
}
