import 'package:flutter/material.dart';

class Day15ClipRRect extends StatelessWidget {
  const Day15ClipRRect({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text("ClipRRect 20"),
              Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.red,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://picsum.photos/200/200',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text("ClipRRect 100"),
              Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.red,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network("https://picsum.photos/200/200"),
                ),
              ),
              const Text("ClipRect"),
              ClipRect(
                // none: 不裁切
                // hardEdge: 裁切但不抗鋸齒 (default)
                // antiAlias: 抗鋸齒
                // antiAliasWithSaveLayer: 抗鋸齒, 並且緩存
                // 速度: none > hardEdge > antiAlias > antiAliasWithSaveLayer
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: 0.6,
                  child: Image.network(
                      "https://img1.baidu.com/it/u=2324541312,3167046558&fm=253&fmt=auto&app=120&f=JPEG?w=601&h=400"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
