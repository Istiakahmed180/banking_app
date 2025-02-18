import 'package:banking_app/common/controller/bottom_navigation_controller.dart';
import 'package:banking_app/screens/card/view/recipient_details/recipient_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RecipientSection extends StatelessWidget {
  const RecipientSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> recipients = [
      {
        "icon": "assets/icons/recipient_icons/send.svg",
        "name": "Send Money",
        "image": "",
      },
      {
        "icon": "",
        "name": "Watson",
        "image":
            "https://s3-alpha-sig.figma.com/img/a27b/b91a/fb0ec304610b4834f08a60cec93a7a06?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=jKx5ohlTQ~s8Y6mRlVWmfrCFzQ-VlfLmQblh~pQZTBriJggFVPQGZvOcYM8cPaCOonpkIBSesNPk~H72Xo8HPp9N1NeqfT93J9O47kgji9H7wmWa4KP9boQrKtIbgikPHgvNcr5ewtLTplVBClpL4QoJodyHrt3l6cQqOleoFQEQ4PEF5EVOaoo~7nx8MjskbmjXYSkzNUiV0-0-pFWiiV-ZTrQrdG4WCXIC2j-xDp4O5AI81wmBhnsXU~uZ5Mva6Q-wiiCq2jrkH4ClBfVbA4epSI9mNdQK3E4YiSpf4qfEbYRxHzR7e1z7MYSsPa5lnF8LXX36vFSALElfkhGIGw__",
      },
      {
        "icon": "",
        "name": "Brown",
        "image":
            "https://s3-alpha-sig.figma.com/img/64d1/e050/f3e748729d36a85dece18d7e68d214e3?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=BBw3hHSQg37Sjg725I8PKF0b02~sId~JC1fVdDIpBuGaLjwMMefab6~E1eDH-vvPb9dvhDiS~nw--0kjzMfDc6wBbk~FgLxym3TznLsaO3XfzamcwKlceTVDVfkjHwBeGcxhqUXvh646sDMhS0bLxDm-KAVzbas1hFzkUbZJVR4s12aggiOl9MtItctEiQoh7SUkRlzARDubueBZFm9hUDT0I82pmVix5xbPBxRJp2tkTdsU1XwEioBnzvBdG1~w2udLmtQe4nn4zixxUfZ2aKlOLSocfGcDD7P~270iwU9ZTVrfGuBkQGH2ULjDG4rdZaIsgzIu94DB~JOl0~B5hw__",
      },
      {
        "icon": "",
        "name": "John",
        "image":
            "https://s3-alpha-sig.figma.com/img/180c/db6f/67de1b2dbf6f7e5edad6ada6b617b683?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=U3B2GVaraIZN5PLfIrssRUpnE~QWdNX27S~hhuYNZ6fA~dIBQB-RP1vjNUdlpNDNs2zP5t49h~Qhlx6SdyX7AJXZJmHiRtvQ5hrEA9RgWzpVxIFbPTRcZzxrLVKerkyzAQHa0EViFRH1cBysZAKyZighHVf3onSkhE~aCH0K6GanM26Q6zGM7lpPGc8CPhAh70Ew5glUoaPxxGj~RXnHT4b71P86WAxquwWG3kfZ6e~LxVfmacHZZb0BMX027wnCDMCf6dhHu1s9yBcSu1HO5mkpVargDjSGYF83fJ~Z2RtmZJX~FBQLyIAhB9TUGJOw3OI1io42hJ9o9SW2t5NFzQ__",
      },
      {
        "icon": "",
        "name": "Johnson",
        "image":
            "https://s3-alpha-sig.figma.com/img/3e2d/dee1/798612181c3db5a09eb2173ba58d9664?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=q3GpgIki9uAsB9kiWkemUzRwOs6p9z2T76YWtP2kmf6Dpal2LrpXdOB~J0I2dzikZsYmqSWI-qSMbGo5zstmoMYntECBAIo6t94TlUIEz8VrTm3xnG2vd1-v9m-fhQ6pbyondNLQI0vs9QyNxg4R-8ZMxc212M5qam-4UtHza6vMf1WPzOycpJbIjj-6iEnExvh-YSY2Ag9NvTN1DHyioDrNmAUFQ86vECtsdcJsmC-RU8qbUNMkWDuv88H9KEwltkfCISyFhI4FGDkm0xThlbPU6tkAHBVoqPjmHmE53AuVic2EoJxLXir25wjRYzkqDDXshlQViORcXHsauHdmUQ__",
      },
      {
        "icon": "",
        "name": "Michael",
        "image":
            "https://s3-alpha-sig.figma.com/img/a772/9239/a076a529bd35354b4078f12bec79f3bf?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=eGcda6fFymXMZOAJiDFgnkuuwh6cgTqbK9OC06GNu552S8Hua4ofBWg1c0iclVNWXsPcUNzWP7L58Jw8kcodsTw2VsISH0hHKvRAZIqmJqtoevVhAO2WxfMZBl4pUMhP3TVK7LmiGrDx~4aLEgOAf80VmpHXK0EtiFW-L860pGu8dKLTu2p539PeE6IPtZZ2jQOp60ZNx0fJFaD0~ndAbyTLSedIPO7fNzU2exW2PaopMxpgpHlEDtoTWY66KqeKVN3zxoE1LBEuCa2wsyrQ-h9hiEAeDo0ygBsaU9Z21f7b8FQGccnf9SQdoSgyhEX1i7Ob-Fs-EGrBoXK7e48kLg__",
      },
      {
        "icon": "",
        "name": "Wilson",
        "image":
            "https://s3-alpha-sig.figma.com/img/1ba3/03dd/19fba20c5516b723a6ec12d6115c3210?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=OoTqulPs~6gf6bChphyIjYFh33ri6Dxs5Op8ROXrG8tCZMeXqus0dEHQqL0qwpd2~oRrwFNcFL0UKC4vnM8kS7kA3sya~Uq~vZXBNGHInp3Zszhn7v-waI1PCdReDBCgvUbm~F1sw0mUuy7jjRemTqwQ6CfwmGV5KwJKUJ2C-ITbt9JiNrS-pHVNfg7Nl8aMUWeZVcM9o3pSuiMQml5O94TutRm9yYrC9OIh-F4BY~3U01GLcU4pK4xuzraW7L2rjPTs48UgVQ4v6WJWjJR36~efSIIiYVKpcxJnQXzIYPVS31kNXRhTc1Soo-Ebjzmr1UvfvwchieA6S4qbnKkMZA__",
      },
      {
        "icon": "",
        "name": "David",
        "image":
            "https://s3-alpha-sig.figma.com/img/1779/e0bd/e6f3cdcd3584e5e8e8de4f97cb957066?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=khhudKcvEO9JiqkghkqrCcdvKkkrblo1xC-D91vkLjmPKkcwOmCGjgeEZxaQHYsxm0ERQW7QfE3hKhtBhU8DIqZxaOgg4CIKQNsg6-E3nvroAD6oyTWhfwhs6TFkM8yFTS02UKHYwpuPT-BGh7Alz1wCv1Naqt2zjMKm8g-mYY-3rP9jbVsmRsllwLg~dkPCLfnUJT0kRj1D2DyZEOsoHb8rXGpaUI-hvrl6RQ5fmi7UVeuqoqnV61UYbJLWkiLvKAislPNI~HXTFdto18RmTKkns~wGQm6LHuqHgGmjg6rSGp40TfJSap1q7Snsm8cMynu4EQJ0rxw4KKYxAvyXKQ__",
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            recipients.map((recipient) {
              return GestureDetector(
                onTap: () {
                  final controller = Get.find<BottomNavigationController>();
                  controller.pushPage(
                    RecipientDetailsScreen(
                      recipientName: recipient["name"]!,
                      recipientImage: recipient["image"]!,
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color:
                              recipient["icon"]!.isNotEmpty
                                  ? const Color(0xFF1B1B1B)
                                  : null,
                          image:
                              recipient["image"]!.isNotEmpty
                                  ? DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(recipient["image"]!),
                                    onError: (exception, stackTrace) {
                                      // Handle image loading errors
                                      debugPrint(
                                        "Failed to load image: $exception",
                                      );
                                    },
                                  )
                                  : null,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child:
                            recipient["icon"]!.isNotEmpty
                                ? Padding(
                                  padding: const EdgeInsets.all(17.0),
                                  child: SvgPicture.asset(recipient["icon"]!),
                                )
                                : null,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        recipient["name"]!,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
