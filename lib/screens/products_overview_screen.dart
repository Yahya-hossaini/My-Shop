import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

enum FilterOption {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({super.key});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyShop',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOption selectedValue) {
              setState(() {
                if (selectedValue == FilterOption.Favorites){
                  _showOnlyFavorites = true;
                }else{
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            iconColor: Colors.white,
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOption.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOption.All,
              ),
            ],
          ),
        ],
      ),
      body: ProductsGrid(showFavorites: _showOnlyFavorites,),
    );
  }
}
