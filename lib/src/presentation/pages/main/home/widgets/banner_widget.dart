import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ploff_final/src/config/themes/themes.dart';
import 'package:ploff_final/src/data/models/home/banner_response.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
  final List<BannerResponse> list;

}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 6,
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: ThemeColors.light.white,
            ),
            padding: AppUtils.kPaddingAll16,
            height: 172,
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: AppUtils.kBorderRadius8,
                    child: PageView.builder(
                      itemCount:
                      int.tryParse(state.banners?.count ?? '0'),
                      onPageChanged: (i) {
                        setState(() {
                          index = i;
                        });
                      },
                      itemBuilder: (_, index) {
                        return CachedNetworkImage(
                          imageUrl: list![index] ?? '',
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 10,
                  child: Center(
                    child: SizedBox(
                      height: 8,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return AnimatedContainer(
                            duration:
                            const Duration(milliseconds: 300),
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: index == this.index
                                  ? ThemeColors.light.white
                                  : ThemeColors.light.white
                                  .withOpacity(0.4),
                              shape: BoxShape.circle,
                            ),
                          );
                        },
                        separatorBuilder: (_, __) =>
                        AppUtils.kBoxWidth4,
                        itemCount: list!.length,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
