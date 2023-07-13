import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled8/data/data.dart';
import '../../../constants/constants.dart';
import '../../../models/product_model.dart';
import '../../details/details_screen.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: black.withOpacity(0.07),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          onSubmitted: (String x){
            print("oh");
          },
          onTap: (){
            showSearch(context: context, delegate: datasearch());
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(
                vertical: appPadding * 0.75,
                horizontal: appPadding,
              ),
              fillColor: white,
              hintText: 'Search',
              /* prefixIcon: Icon(
                Icons.search,
                size: 25,
                color: black.withOpacity(0.4),
              ),*/
              prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: datasearch());
                  })),
        ),
      ),
    );
  }
}

class datasearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<ProductModel> filternames =
    productList.where((element) => element.name.contains(query)).toList();
  return  ListView.builder(
        itemCount: query == "" ? productList.length : filternames.length,
        itemBuilder: (context, i) {
          Size size = MediaQuery.of(context).size;
          if (query == "") {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(
                      product: productList[i],
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(appPadding / 3),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            fit: BoxFit.cover,
                            height: size.height * 0.24,
                            width: 600,
                            productList[i].imageUrl,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        productList[i].name,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'by ${productList[i].manufacturer}',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: black.withOpacity(0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );

          } else {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(
                      product: filternames[i],
                    ),
                  ),
                );
              },

              child: Padding(
                padding: const EdgeInsets.all(appPadding / 3),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            fit: BoxFit.cover,
                            height: size.height * 0.24,
                            width:600,
                            filternames[i].imageUrl,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        filternames[i].name,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'by ${filternames[i].manufacturer}',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: black.withOpacity(0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<ProductModel> filternames =
        productList.where((element) => element.name.contains(query)).toList();

    return ListView.builder(
        itemCount: query == "" ? productList.length : filternames.length,
        itemBuilder: (context, i) {
          Size size = MediaQuery.of(context).size;
          if (query == "") {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(
                      product: productList[i],
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(appPadding / 3),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            fit: BoxFit.cover,
                            height: size.height * 0.24,
                            width: 600,
                            productList[i].imageUrl,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        productList[i].name,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'by ${productList[i].manufacturer}',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: black.withOpacity(0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );

          } else {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(
                      product: filternames[i],
                    ),
                  ),
                );
              },

              child: Padding(
                padding: const EdgeInsets.all(appPadding / 3),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            fit: BoxFit.cover,
                            height: size.height * 0.24,
                            width:600,
                            filternames[i].imageUrl,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        filternames[i].name,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'by ${filternames[i].manufacturer}',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: black.withOpacity(0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        });



  }

}
