import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Voluptate velit ut nulla duis id ipsum ex pariatur esse proident esse.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Esse dolore exercitation commodo non elit dolor nostrud incididunt velit reprehenderit aliquip.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Reprehenderit adipisicing qui elit culpa do et elit ut anim.caption', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  late final PageController pageviewController = PageController();
  bool endReached = false;
  
  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;
      if ( !endReached && page >= ( slides.length - 1.5 ) ) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {

    pageviewController.dispose();

    super.dispose();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageUrl,
              )
            ).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Salir'),
            )
          ),

          endReached ?
          Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration( milliseconds: 500 ),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: const Text('Comenzar')
              ),
            ),
          ) : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image( image: AssetImage( imageUrl ) ),
          const SizedBox( height: 20 ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text( title, style: titleStyle ),
                const SizedBox( height: 10 ),
                Text( caption, style: captionStyle ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}