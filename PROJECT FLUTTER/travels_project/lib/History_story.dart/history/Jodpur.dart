import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Jodpur extends StatefulWidget {
  const Jodpur({super.key});

  @override
  State<Jodpur> createState() => _JodpurState();
}

class _JodpurState extends State<Jodpur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Center(
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 255, 252, 252)),
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 8,
            // height: 900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    "Assets/image/18.webp",
                    fit: BoxFit.fill,
                    height: 170,
                    width: double.maxFinite,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Jodhpur Ka Kila Mehrangarh\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "मेहरानगढ़ किला देश के सबसे बड़े किलो मे से एक है इस किले का निर्माण सन् 1459 मे राव जोधा ने करवाया था यह किला शहर से तरीबन 410 फीट ऊपर एक पहाड़ी की चोटी पर स्थित है और करीब 5 किलोमीटर के छेत्र मे फैला हुआ है जो अपने चारो तरफ ऊँची दीवारों से घिरा हुआ हैइस किले मे कुल 7 द्वार है जिसके अन्दर मोती महल, शीश महल और फुल महल जैसे कई और महल भी है इसके अलावा जोधपुर के किले मे एक संग्राहलय भी जो राजस्थान के प्रसिद्ध संग्राहलय मे से एक माना जाता है| मेहरानगढ़ किले को जोधपुर का सबसे बड़ा मुख्य आकर्षण का केंद्र माना जाता है जो यहाँ आने वाले पर्यटकों को खूब आकर्षित करता है आमतौर पर जोधपुर की पहचान मेहरानगढ़ किले से ही होती है तो अगर आप जोधपुर घूमने आये हैं तो इस किले को देखना बिलकुल भी मिस न करे इसके बिना आपकी जोधपुर यात्रा अधूरी रह जाएगी \n",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("Assets/image/19.webp",
                    fit: BoxFit.fill, height: 170, width: double.maxFinite),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Umed Bhavan Palace\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "जोधपुर शहर परिसर के भीतर स्थित यह पैलेस जोधपुर के शाही परिवार का निवास स्थान है जिसका निर्माण महाराजा उमेद सिंह द्वरा वर्ष 1929 से 1943 के बिच करवाया गया था इस महल मे कुल 347 कमरे है जिसे तिन हिस्सों मे बाटा गया है जिसमे एक हिस्सा शाही परिवार के निवास स्थान के रूप मे स्तेमाल किया जाता है दूसरा भाग ताज होटल ग्रुप को दिया गया है तो वही तीसरे भाग को एक संग्राहलय के रूप मे तब्दील कर दिया गया हैउमेद भवन पैलेस पुरे दुनिया की सबसे बड़ी और सबसे महँगी होटल्स मे से एक है इसे दुनिया की बेस्ट हेरिटेज होटल माना जाता है यह महल बलुआ पत्थरों से बना हुआ अपने अदभुत वास्तुकला के लिये काफी प्रसिद्ध है जो पर्यटकों को काफी रोमांचित करता है\n",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("Assets/image/20.webp",
                    fit: BoxFit.fill, height: 170, width: double.maxFinite),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ghanta Ghar Place\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "घंटा घर एक क्लॉक टावर है जिसका निर्माण महाराजा सरदार सिंह ने करवाया था जो सरदार मार्किट मे ही स्थित है यह टावर तक़रीबन 100 साल से भी ज्यादा पुराना है अगर आप चाहे तो इस टावर के ऊपर भी जा सकते है जिसका किराया मात्र 10 रूपये है जहाँ से आप आस पास के बजार और शहर कि खूबसूरती देख पाएंगे हालाँकि पहले इसकी इजाजत नही मिलती थी पर अब इसमें पर्यटको को देखते हुए ऊपर जाने कि अनुमति दे दी गई है| इसके अलावा आप यहाँ से हाथ कारीगरी से बनाई गई चीजे जैसे जोधपुरी जुते, साड़ियाँ, सूट और बैग्स आदि कि खरीदारी कर सकते है इसके लिये आपको कई दुकाने मिल जाएगी खरीदारी करने का सबसे बढ़िया समय सूर्यास्त के बाद का रहता है,",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("Assets/image/21.webp",
                    fit: BoxFit.fill, height: 170, width: double.maxFinite),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mandore Garden Place\n",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                Text(
                  "मंडोर गार्डन जोधपुर कि प्राचीन राजधानी मंडोर मे स्थित है जो किसी समय माड़वाड़ के महाराजाओं की पूर्व राजधानी भी हुआ करती थी इसकी दुरी जोधपुर से लगभग 8 किलोमीटर की है यहाँ कई प्राचीन मंदिर और स्मारक है जो पर्यटकों के लिये एक प्रमुख आकर्षण का केंद्र है यूँ तो यहाँ कई स्मारक है परन्तु महाराजा अजित सिंह का स्मारक सबसे आकर्षित है जो चारो ओर सुंदर बाग से घिरा हुआ है इसके अलावा यहाँ पर आपको एक संग्राहलय और एक बड़े से हॉल मे हिन्दू देवी-देवताओं की तस्वीरें देखने को मिलेगी जिसे 33 करोड़ देवी-देवताओं का मंदिर भी कहा जाता है\n",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("Assets/image/22.webp"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Khejdla Kila\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "खेजडला किले का निर्माण 17 वीं शताब्दी मे जोधपुर के महाराजा द्वारा बनवाया गया था जिसे भारत के राजाओं और रानियों के शानदार महल के रूप मे जाना जाता है तक़रीबन 400 साल पूराने इस पुरे महल मे राजपूत वास्तुकला का एक अनोखा संग्रेह देखने को मिलता है आप रहने के लिये इसमें रूम कि बुकिंग भी करा सकते है क्योंकि अब इस किले को एक शानदार होटल मे बदल दिया गया है\n",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
