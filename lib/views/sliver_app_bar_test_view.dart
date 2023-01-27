import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SliverAppBarTestView extends StatefulWidget {
  const SliverAppBarTestView({super.key});

  @override
  State<SliverAppBarTestView> createState() => _SliverAppBarTestViewState();
}

class _SliverAppBarTestViewState extends State<SliverAppBarTestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.grey.shade600,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('TITEL'),
                background: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          color: Colors.grey.shade800,
                        ),
                        Container(
                          height: 150,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade600),
                      ),
                    )
                  ],
                ),
              ),
              expandedHeight: 300,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  height: 100,
                  color: Colors.grey.shade400,
                  child: Center(
                    child: Text(
                      index.toString(),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
