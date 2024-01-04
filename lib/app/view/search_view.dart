import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/product_store/models/app_state_model.dart';
import 'package:store_pro/product_store/widgets/product_item.dart';
import 'package:store_pro/product_store/widgets/search_bar.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  String _query = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController(text: _query)
      ..addListener(_onqueryChanged);
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onqueryChanged() {
    setState(() {
      _query = _controller.text;
    });
  }

  Widget _buildSearchbox() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Searchbar(controller: _controller, focusNode: _focusNode),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateModel>(context);
    final filteredproducts = model.search(_query);
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: SafeArea(
        child:  Column(
          children: [
            _buildSearchbox(),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return ProductItem(
                  icecream: filteredproducts[index],
                );
              },
              itemCount: filteredproducts.length,
            ))
          ],
        ),
      ),
    );
  }
}
