class NotificationsModel {
  List<Map> images;
  List<String> text;
  NotificationsModel(this.images, this.text);
}

List<NotificationsModel> note = [
  NotificationsModel(
    [
      {
        'img':
            'https://z-p3-scontent.fadd1-1.fna.fbcdn.net/v/t39.30808-6/428491886_383488684441473_1416865083986299752_n.jpg?stp=dst-jpg_s600x600_tt6&_nc_cat=105&ccb=1-7&_nc_sid=833d8c&_nc_ohc=GQTXbj0hYAgQ7kNvgGAGNUh&_nc_zt=23&_nc_ht=z-p3-scontent.fadd1-1.fna&_nc_gid=AEkazSXElU-Y8M_qcf_lYq-&oh=00_AYDgeNAZFRbVnaeNFagw0zqto7CeQcviShAq_lC2ZohD1A&oe=6795BA0F'
      },
      {
        'img':
            'http://www.aastu.edu.et/library/wp-content/uploads/sites/9/2024/03/library-computers.png'
      },
      {
        'img':
            'https://ethiopianmonitor.com/wp-content/uploads/2023/07/students-in-Huawei-booth-.jpg'
      },
    ],
    [
      'The Superior Documentry',
      'Rankings',
      'Career-Jobs',
      'Sports',
    ],
  )
];
