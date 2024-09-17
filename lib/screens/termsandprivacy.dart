import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/styles/stylings.dart';

class Termsandprivacy extends StatelessWidget {
  final String which;
  const Termsandprivacy({super.key, required this.which});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: which=="terms"?Text("Terms and conditions",style: Stylings.titles.copyWith(fontSize: 12),):Text("Privacy Policy",style: Stylings.titles.copyWith(fontSize: 12),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed viverra sem. Morbi eget lorem arcu. Cras cursus mauris non mi auctor, vitae interdum eros dictum. Ut vel dui nec urna commodo porta. Phasellus condimentum felis ac massa tempor pretium. Sed fermentum auctor leo, sit amet vehicula nisl mollis eget. Nunc felis tortor, porttitor vel ultricies vitae, vulputate vitae nibh. Maecenas pharetra ipsum mauris, eget maximus leo hendrerit at. Mauris fermentum turpis interdum congue accumsan. Morbi elementum nunc sit amet arcu placerat semper. Nullam mattis pellentesque velit. Nam nec diam eget mi fringilla ullamcorper. Etiam ut dui ullamcorper, gravida ante vel, pellentesque elit. Sed nisi lectus, convallis quis elit vel, vestibulum pretium lorem.\nIn iaculis ac quam non consectetur. Sed auctor tortor nec nisi tempor, id fermentum nulla auctor. Aenean lectus purus, facilisis mollis magna at, dapibus sollicitudin odio. Sed aliquet dolor sit amet ultrices rhoncus. Pellentesque purus ipsum, feugiat eu sapien quis, semper euismod enim. Duis quis elementum dolor, a sollicitudin massa. Integer suscipit, ex in vulputate molestie, magna augue condimentum turpis, id dignissim ante metus nec turpis. Vestibulum scelerisque, diam et dignissim euismod, dolor urna vehicula mauris, vitae laoreet ligula augue ut quam. Quisque vestibulum sapien sit amet justo vehicula faucibus. Phasellus porttitor pulvinar fermentum. Ut porttitor euismod sagittis. Praesent metus tortor, rutrum et purus eu, tristique accumsan ante. Aliquam varius risus sit amet eros maximus gravida. Aliquam fermentum quam eu nulla eleifend, ut vulputate lectus lobortis.\nVivamus finibus id erat sed efficitur. Etiam sagittis vehicula ipsum, eu rutrum dui auctor ut. Mauris cursus eleifend sapien, id placerat dui rhoncus nec. Phasellus laoreet volutpat fringilla. Nullam tellus erat, egestas quis turpis non, eleifend euismod dui. Duis varius molestie sollicitudin. Duis pharetra est nulla, lacinia lacinia arcu placerat non. Morbi tempor eros in turpis suscipit facilisis. Nulla congue non nibh sed molestie. Nullam pellentesque mauris in nisi euismod tempus. Cras facilisis nec enim quis lobortis.\n\nNullam nibh quam, rhoncus vel felis vitae, iaculis posuere velit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer ut dolor vitae nisi tincidunt ultrices vel id augue. Morbi et nulla a purus vestibulum tincidunt id a risus. Etiam libero nunc, tincidunt eget viverra a, efficitur et lacus. Nam hendrerit fermentum nisi, ac fringilla risus. Nulla facilisi. Suspendisse semper rutrum felis, non ullamcorper velit pretium non. Phasellus dictum mollis tellus nec efficitur. Ut vestibulum sapien vel massa eleifend vestibulum. Morbi magna enim, volutpat vel condimentum vitae, dapibus non leo.\n\nIn gravida eros sed bibendum congue. Integer ac ipsum euismod, lobortis magna ut, scelerisque dolor. In pharetra, nibh elementum mattis semper, odio odio pharetra quam, eu molestie orci lacus porta mi. Suspendisse fermentum nisi turpis, id euismod turpis vestibulum eget. Morbi elementum bibendum lacus feugiat fringilla. Vestibulum et nisi nisl. Integer dignissim sodales euismod. Proin consequat erat vitae mattis ultricies.",style: Stylings.subTitles.copyWith(fontSize: 12),),
        ),
      ),
    );
  }
}
