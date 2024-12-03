import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:audio/app/core/utils/constants/strings.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:audio/app/providers/category_view_model/category_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  static const String id = 'Search';
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final FocusNode _focusNode = FocusNode();
  final CategoryViewModel categoryViewModel = CategoryViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // sayfa yüklendikten sonra klavye odaklanacak
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categoryViewModel =
        context.watch<CategoryViewModel>(); // hint text için watch ediyor
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            Strings.searchPageAppBar,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            /* style: GoogleFonts.dmSans(
              color: AppColors.black,
              
            ), */
          ),
          leading: IconButton(
            onPressed: () {
              Navigation.ofPop();
            },
            icon: SvgPicture.asset(AppVectors.backIcon),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppVectors.shoppingcartIcon),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            maxLines: null, // satır bitince aşağıdan devam edecek
            focusNode:
                _focusNode, // Klavye kontrolü için focusNode kullanımı burada
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: categoryViewModel.searchHint,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
