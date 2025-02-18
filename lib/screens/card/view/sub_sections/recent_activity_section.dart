import 'package:flutter/material.dart';

class RecentActivitySection extends StatefulWidget {
  const RecentActivitySection({super.key});

  @override
  State<RecentActivitySection> createState() => _RecentActivitySectionState();
}

class _RecentActivitySectionState extends State<RecentActivitySection> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> activityList = [
    {
      "label": "This Day",
      "backgroundColor": const Color(0xFFB6EF11),
      "textColor": const Color(0xFF0D0D0C),
    },
    {
      "label": "This Week",
      "backgroundColor": const Color(0xFF1B1B1B),
      "textColor": const Color(0xFFFFFFFF),
    },
    {
      "label": "This Month",
      "backgroundColor": const Color(0xFF1B1B1B),
      "textColor": const Color(0xFFFFFFFF),
    },
    {
      "label": "Last 3 Months",
      "backgroundColor": const Color(0xFF1B1B1B),
      "textColor": const Color(0xFFFFFFFF),
    },
    {
      "label": "Last 6 Months",
      "backgroundColor": const Color(0xFF1B1B1B),
      "textColor": const Color(0xFFFFFFFF),
    },
    {
      "label": "This Year",
      "backgroundColor": const Color(0xFF1B1B1B),
      "textColor": const Color(0xFFFFFFFF),
    },
  ];

  final List<Map<String, dynamic>> recentActivities = [
    {
      "imageUrl":
          "https://s3-alpha-sig.figma.com/img/fd34/878f/97ffd0bb9d4455a6c26a8f6ce4edd7cc?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=AVBl7Fw2iZLLJbPGdpbrgYsMfiPnFXNVdS7cEMLvRorTRGe6ZEGQGy~Ci8EeIw6PJvSbcCQRxf7usiHIV4C5-VsWWGZfXoFTxhDjhH1AmNMqIn8oZ115wda~86Nd-OGZ05U6qGiYpXhXxl2ch8RhJcakEG10iwa5Xkp6VI0OIurpZ4mA33yt5rmG27Ku-4u10sF6k~p66-AqzdPrzD~aNYhnsoOj3-n-9BrW29zAVnxcXnEIXAzwmHHejuVLST-Xnp-B5b5co~mLwR7zyiDgooJhzNjMGKWnJ3eefwZRotE~A~o9T0FTb14e5sOjf4AbOdS1gsJykyfA9MRyOtnNWw__",
      "recipient": "Alina",
      "category": "Work",
      "date": "12 Jun 2024",
      "amount": "-\$59",
    },
    {
      "imageUrl":
          "https://s3-alpha-sig.figma.com/img/2024/6da2/8c56f1f5a3be9c33a6dfe72c05b4b2c2?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=YAitFEX3O0AD0yprGp-cnco6ZAUkZji4VBsWptnchb0O~N90NNKMrDkXO8bm2jalo4A42~6rNFqzPyDp61lQYsfsoKGwLHirGTC1bp9EwILgEFzEpGBo83QmsrKiYFPeF3iZCy7Mg1VNovbAzg3UTk57O6ASTDJC-lgNmBPc5bgLzA98GJtfCHqh5cApCSz6DsyYxb6lyC6y~GuDZZPAy-FmOyGqTrZmJ-wOheGnTn3iDK510g53jSR9AoJbruf8aIfsixrrVm7vadPYxlO~SLtoAG0KTswWqzkezwRi3F3mpsD~mj8mQu1Fod-ggLpK8htSOY10JivDeMiRfgIJbQ__",
      "recipient": "John",
      "category": "Personal",
      "date": "10 Jun 2024",
      "amount": "-\$120",
    },
    {
      "imageUrl":
          "https://s3-alpha-sig.figma.com/img/ae01/3b3f/87988ec3566e768583abab7de0dcdbe4?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=C8IZwtjctN-GZyXEUWTjFMpnw~VliVXfehuCOCGXWAsjEY2b2VnZu4e9SzaYjkTtTqgaApYR52yNYVqXCnoy8wvZOApC~EoqcJYsuf5akkf6~72XpD8hHfrzGYDxMtvDAljV~dM4eR3RWabT3M6p7QKfH5l8Jd~axtexG~0UGNghmqsZAtfBvHPA0dfHP2Lmm-60I0E4QpZYKHSfwW3RTGPNx3Nc8x22tTAFuwKdmCYt1-CVcWNNVqNN7qDpwaJujjNhVGSe3G-2mD6vpBNVnP-tgz1qtpTaOAbSzuxHiV3AJSLwelVNmoYikJ~CSOhBk3a2YUcsQxVFEUuNqQtHTA__",
      "recipient": "Michel",
      "category": "Salary",
      "date": "10 Jun 2024",
      "amount": "+\$1200",
    },
    {
      "imageUrl":
          "https://s3-alpha-sig.figma.com/img/1ba3/03dd/19fba20c5516b723a6ec12d6115c3210?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=OoTqulPs~6gf6bChphyIjYFh33ri6Dxs5Op8ROXrG8tCZMeXqus0dEHQqL0qwpd2~oRrwFNcFL0UKC4vnM8kS7kA3sya~Uq~vZXBNGHInp3Zszhn7v-waI1PCdReDBCgvUbm~F1sw0mUuy7jjRemTqwQ6CfwmGV5KwJKUJ2C-ITbt9JiNrS-pHVNfg7Nl8aMUWeZVcM9o3pSuiMQml5O94TutRm9yYrC9OIh-F4BY~3U01GLcU4pK4xuzraW7L2rjPTs48UgVQ4v6WJWjJR36~efSIIiYVKpcxJnQXzIYPVS31kNXRhTc1Soo-Ebjzmr1UvfvwchieA6S4qbnKkMZA__",
      "recipient": "Emma",
      "category": "Shopping",
      "date": "8 Jun 2024",
      "amount": "-\$75",
    },
    {
      "imageUrl":
          "https://s3-alpha-sig.figma.com/img/1779/e0bd/e6f3cdcd3584e5e8e8de4f97cb957066?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=khhudKcvEO9JiqkghkqrCcdvKkkrblo1xC-D91vkLjmPKkcwOmCGjgeEZxaQHYsxm0ERQW7QfE3hKhtBhU8DIqZxaOgg4CIKQNsg6-E3nvroAD6oyTWhfwhs6TFkM8yFTS02UKHYwpuPT-BGh7Alz1wCv1Naqt2zjMKm8g-mYY-3rP9jbVsmRsllwLg~dkPCLfnUJT0kRj1D2DyZEOsoHb8rXGpaUI-hvrl6RQ5fmi7UVeuqoqnV61UYbJLWkiLvKAislPNI~HXTFdto18RmTKkns~wGQm6LHuqHgGmjg6rSGp40TfJSap1q7Snsm8cMynu4EQJ0rxw4KKYxAvyXKQ__",
      "recipient": "David",
      "category": "Utilities",
      "date": "5 Jun 2024",
      "amount": "-\$90",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent activity",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        _buildFilterChips(),
        const SizedBox(height: 5),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
            itemCount: recentActivities.length,
            itemBuilder: (context, index) {
              return _buildActivityItem(recentActivities[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildActivityItem(Map<String, dynamic> activity) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(activity["imageUrl"]),
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "To ${activity["recipient"]}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        ".",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      activity["category"],
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xFFFFFFFF).withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  activity["date"],
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF).withOpacity(0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              activity["amount"],
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(color: const Color(0xFFFFFFFF).withOpacity(0.2), height: 35),
      ],
    );
  }

  Widget _buildFilterChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            activityList
                .asMap()
                .entries
                .map(
                  (entry) => Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = entry.key;
                        });
                      },
                      child: _buildFilterChip(
                        label: entry.value["label"],
                        backgroundColor:
                            _selectedIndex == entry.key
                                ? const Color(0xFFB6EF11)
                                : const Color(0xFF1B1B1B),
                        textColor:
                            _selectedIndex == entry.key
                                ? const Color(0xFF0D0D0C)
                                : const Color(0xFFFFFFFF),
                        fontWeight:
                            _selectedIndex == entry.key
                                ? FontWeight.w600
                                : FontWeight.w500,
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }

  Widget _buildFilterChip({
    required String label,
    required Color backgroundColor,
    required Color textColor,
    required FontWeight fontWeight,
  }) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 12,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
