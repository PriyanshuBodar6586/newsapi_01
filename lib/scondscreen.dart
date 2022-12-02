import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapi_01/provider.dart';
import 'package:provider/provider.dart';


class Secondscreen extends StatefulWidget {
  const Secondscreen({Key? key}) : super(key: key);

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  Api_Provider? apiproviderT;
  Api_Provider? apiproviderF;
  @override
  Widget build(BuildContext context) {
    apiproviderF = Provider.of<Api_Provider>(context, listen: false);
    apiproviderT = Provider.of<Api_Provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Container(
            child: CachedNetworkImage(
              imageUrl: "${apiproviderF!.Datapick!.urlToImage}",
              placeholder: (context, _) => Image.asset(
                  "assets/image/pexels-cottonbro-3944454.jpg"),
              errorWidget: (context, _, __) => Image.asset(
                  "assets/image/pexels-cottonbro-3944454.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
