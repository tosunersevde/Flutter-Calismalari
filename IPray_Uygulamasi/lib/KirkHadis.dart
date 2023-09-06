import 'package:flutter/material.dart';

class KirkHadis extends StatelessWidget {
  const KirkHadis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kırk Hadis"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildText() => Text(
        "1- (Allah Rasûlü) 'Din nasihattır/samimiyettir' buyurdu. "
            "'Kime Yâ Rasûlallah?' diye sorduk. O da; 'Allah’a, "
            "Kitabına, Peygamberine, Müslümanların yöneticilerine ve"
            "bütün müslümanlara' diye cevap verdi. (Müslim, İmân, 95.)\n\n"

          "2- “İslâm, güzel ahlâktır.” "
              "(Kenzü’l-Ummâl, 3/17, HadisNo: 5225.)\n\n"
          "3- 'İnsanlara merhamet etmeyene Allah merhamet etmez.'"
              "(Müslim, Fedâil, 66; Tirmizî, Birr, 16.)\n\n"

          "4- “Kolaylaştırınız, güçleştirmeyiniz, müjdeleyiniz, "
              "nefret ettirmeyiniz.'"
              "(Buhârî, İlm, 12; Müslim, Cihâd, 6.)\n\n"

          "5- “İnsanların Peygamberlerden öğrenegeldikleri sözlerden "
              "biri de: ‘Utanmadıktan sonra dilediğini yap!’ sözüdür.” "
              "(Buhârî, Enbiyâ, 54; EbuDâvûd, Edeb, 6.)\n\n"

          "6- “Hayra vesile olan, hayrı yapan gibidir.” "
              "(Tirmizî, İlm, 14.)\n\n"

          "7- “Mümin, bir delikten iki defa sokulmaz.(Mümin, iki defa "
              "aynı yanılgıya düşmez)” "
              "(Buhârî, Edeb, 83; Müslim, Zühd, 63.)\n\n"

          "8- “Nerede olursan ol Allah’a karşı gelmekten sakın; yaptığın "
              "kötülüğün arkasından bir iyilik yap ki bu onu yok etsin. "
              "İnsanlara karşı güzel ahlakın gereğine göre davran.”"
              "(Tirmizî, Birr, 55.)\n\n"

          "9- 'Allah, sizden birinizin yaptığı işi, ameli ve görevi sağlam"
              " ve iyi yapmasından hoşnut olur.' "
              "(Taberânî, el-Mu’cemü’l-Evsat, 1/275; Beyhakî, "
              "ﬁu’abü’l-Îmân, 4/334.)\n\n"

          "10- “İman, yetmiş küsur derecedir. En üstünü ‘Lâ ilâhe illallah "
              "(Allah’tan başka ilah yoktur)’ "
              "sözüdür, en düşük derecesi de rahatsız edici bir şeyi yoldan "
              "kaldırmaktır. Haya da imandandır.” "
              "(Buhârî, Îmân, 3; Müslim, Îmân, 57, 58.)\n\n"

          "11- “Kim kötü ve çirkin bir iş görürse onu eliyle düzeltsin; eğer "
              "buna gücü yetmiyorsa diliyle düzeltsin; buna da gücü yetmezse, kalben "
              "karşı koysun. Bu da imanın en zayıf derecesidir.” "
              "(Müslim, Îmân, 78; Ebû Dâvûd, Salât, 248.)\n\n"

          "12- “İki göz vardır ki, cehennem ateşi onlara dokunmaz: Allah "
              "korkusundan ağlayan göz, bir de gecesini Allah yolunda, nöbet "
              "tutarak geçiren göz.” (Tirmizî, Fedâilü’l-Cihâd, 12.)\n\n"

          "13- “Zarar vermek ve zarara zararla karşılık vermek yoktur.” "
              "(İbn Mâce, Ahkâm, 17; Muvatta’, Akdıye, 31.)\n\n"

          "14- “Hiçbiriniz kendisi için istediğini (mü’min) kardeşi için "
              "istemedikçe (gerçek) iman etmiş olamaz.” "
              "(Buhârî, Îmân, 7; Müslim, Îmân, 71.)\n\n"

          "15- “Müslüman müslümanın kardeşidir. Ona zulmetmez, onu (düşmanına) "
              "teslim etmez. Kim, (mümin) kardeşinin bir ihtiyacını giderirse "
              "Allah da onun bir ihtiyacını giderir. Kim müslümanı bir sıkıntıdan"
              "kurtarırsa, bu sebeple Allah da onu kıyamet günü sıkıntılarının "
              "birinden kurtarır. Kim bir müslümanı(n kusurunu) örterse, Allah da "
              "Kıyamet günü onu(n kusurunu) örter.” "
              "(Buhârî, Mezâlim, 3; Müslim, Birr, 58.)\n\n"

          "16- “İman etmedikçe cennete giremezsiniz, birbirinizi sevmedikçe de "
              "(gerçek anlamda) iman etmiş olamazsınız.” "
              "(Müslim, Îmân, 93; Tirmizî, Sıfâtu’l-Kıyâme, 56.)\n\n"

          "17- “Müslüman, insanların elinden ve dilinden emin olduğu kimsedir.” "
              "(Tirmizî, Îmân, 12; Nesâî, Îmân, 8.)\n\n"

          "18- “Birbirinize buğuz etmeyin, birbirinize haset etmeyin, birbirinize"
              " arka çevirmeyin; ey Allah’ın kulları, kardeş olun. Bir müslümana,"
              " üç günden fazla (din) kardeşi ile dargın durması helal olmaz.” "
              "(Buhârî, Edeb, 57, 58.)\n\n"

          "19- “Hiç şüphe yok ki doğruluk iyiliğe götürür. İyilik de cennete "
              "götürür. Kişi doğru söyleye söyleye Allah katında sıddîk (doğru "
              "sözlü) diye yazılır. Yalancılık kötüye götürür. Kötülük de "
              "cehenneme götürür. Kişi yalan söyleye söyleye Allah katında kezzâb"
              " (çok yalancı) diye yazılır.” "
              "(Buhârî, Edeb, 69; Müslim, Birr, 103, 104.)\n\n"

          "20- “(Mümin) kardeşinle münakaşa etme, onun hoşuna gitmeyecek şakalar"
              " yapma ve ona yerine getirmeyeceğin bir söz verme.” "
              "(Tirmizî, Birr, 58.)\n\n"

          "21- “(Mümin) kardeşine tebessüm etmen sadakadır. İyiliği emredip "
              "kötülükten sakındırman sadakadır. Yolunu kaybeden kimseye "
              "yol göstermen sadakadır. Yoldan taş, diken, kemik gibi şeyleri "
              "kaldırıp atman da senin için sadakadır.” (Tirmizî, Birr, 36.)\n\n"

          "22- “Allah sizin ne dış görünüşünüze ne de mallarınıza bakar. Ama o "
              "sizin kalplerinize ve işlerinize bakar.” "
              "(Müslim, Birr, 33; İbn Mâce, Zühd, 9; Ahmed b. Hanbel, 2/285, 539.)\n\n"

          "23- “Allah’ın rızası, anne ve babanın rızasındadır. Allah’ın öfkesi "
              "de anne babanın öfkesindedir.” (Tirmizî, Birr, 3.)\n\n"

          "24- “Üç dua vardır ki, bunlar şüphesiz kabul edilir: Mazlumun duası, "
              "yolcunun duası ve babanın evladına duası.” "
              "(İbn Mâce, Dua, 11.)\n\n"

          "25- “Hiçbir baba, çocuğuna, güzel terbiyeden daha üstün bir hediye "
              "veremez.” (Tirmizî, Birr, 33.)\n\n"

          "26- 'Sizin en hayırlılarınız, hanımlarına karşı en iyi davrananlarınızdır.'"
              " (Tirmizî, Radâ’, 11; İbn Mâce, Nikâh, 50.)\n\n"

          "27- “Küçüklerimize merhamet etmeyen, büyüklerimize saygı göstermeyen "
              "bizden değildir.” "
              "(Tirmizî, Birr, 15; Ebû Dâvûd, Edeb, 66.)\n\n"

          "28- “Peygamberimiz işaret parmağı ve orta parmağıyla işaret ederek:"
              " “Gerek kendisine ve gerekse başkasına ait herhangi bir yetimi "
              "görüp gözetmeyi üzerine alan kimse ile ben, cennette işte böyle "
              "yanyanayız” buyurmuştur. (Buhârî, Talâk, 25, Edeb, 24; Müslim, Zühd, 42.)\n\n"

          "29- Peygamber Efendimiz “(İnsanı) helâk eden şu yedi şeyden kaçının.”"
              " buyurdu. Onlar nelerdir ya Resulullah dediler. Bunun üzerine "
              "Efendimiz şöyle buyurdu: “Allah’a şirk koşmak, sihir, Allah’ın haram"
              " kıldığı cana kıymak, faiz yemek, yetim malı yemek, savaştan kaçmak, "
              "suçsuz ve namuslu mümin kadınlara iftirada bulunmak.” "
              "(Buhârî, Vasâyâ, 23, Tıbb, 48; Müslim, Îmân, 144.)\n\n"

          "30- “Allah’a ve ahiret gününe imân eden kimse, komşusuna eziyet etmesin."
              " Allah’a ve ahiret gününe imân eden misafirine ikramda bulunsun. "
              "Allah’a ve ahiret gününe imân eden kimse, ya hayır söylesin veya "
              "sussun.” (Buhârî, Edeb, 31, 85; Müslim, Îmân, 74, 75.)\n\n"

          "31- “Cebrâil bana komşu hakkında o kadar çok tavsiyede bulundu ki; ben "
              "(Allah Teâlâ) komşuyu komşuya mirasçı kılacak zannettim.” "
              "(Buhârî, Edeb, 28; Müslim, Birr, 140, 141.)\n\n"

          "32- “Dul ve fakirlere yardım eden kimse, Allah yolunda cihad eden veya "
              "gündüzleri (nafile) oruç tutup, gecelerini (nafile) ibadetle geçiren "
              "kimse gibidir.” (Buhârî, Nafakât, 1; Müslim, Zühd, 41; Tirmizî, Birr, "
              "44; Nesâî, Zekât, 78.)\n\n"

          "33- “Her insan hata eder. Hata işleyenlerin en hayırlıları tevbe edenlerdir.” "
              "(Tirmizî, Kıyâme, 49; İbn Mâce, Zühd, 30.)\n\n"

          "34- “Mü’minin başka hiç kimsede bulunmayan ilginç bir hali vardır; "
              "O’nun her işi hayırdır. Eğer bir genişliğe (nimete) kavuşursa şükreder"
              " ve bu onun için bir hayır olur. Eğer bir darlığa (musibete) uğrarsa "
              "sabreder ve bu da onun için bir hayır olur.” "
              "(Müslim, Zühd, 64; Dârim”, Rikâk, 61.)\n\n"

          "35- “Bizi aldatan bizden değildir.” (Müslim, Îmân, 164.)\n\n"

          "36- “Söz taşıyanlar (cezalarını çekmeden ya da affedilmedikçe)"
              " cennete giremezler.” "
              "(Müslim, Îmân, 168; Tirmizî, Birr, 79.)\n\n"

          "37- “İşçiye ücretini, (alnının) teri kurumadan veriniz.” "
              "(İbn Mâce, Ruhûn, 4.)\n\n"

          "38- “Bir müslümanın diktiği ağaçtan veya ektiği ekinden insan,"
              " hayvan ve kuşların yedikleri şeyler, o müslüman için birer "
              "sadakadır.” (Buhârî, Edeb, 27; Müslim, Müsâkât, 7, 10.)\n\n"

          "39- “İnsanda bir organ vardır. Eğer o sağlıklı ise bütün vücut "
              "sağlıklı olur; eğer o bozulursa bütün vücut bozulur. Dikkat "
              "edin! O, kalptir.” (Buhârî, Îmân, 39; Müslim, Müsâkât, 107.)\n\n"

          "40- “Rabbinize karşı gelmekten sakının, beş vakit namazınızı kılın,"
              " Ramazan orucunuzu tutun, mallarınızın zekatını verin, "
              "yöneticilerinize itaat edin. (Böylelikle) Rabbinizin"
              " cennetine girersiniz.” (Tirmizî, Cum’a, 80)\n\n",

        style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.brown),
  );
}