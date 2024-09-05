import 'package:flutter/material.dart';
import 'package:yoser/widgets/base_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      currentIndex: 0, 
      showBottomNavBar: true, 
      shouldNavigate: true, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Categories',
            style: TextStyle(color: Color.fromRGBO(76, 175, 80, 1), fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              _buildDetailedCategory(
                'Biens agricoles',
                'Agriculture Farming',
                'assets/images/6.png',
                'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              ),const SizedBox(height: 16),
              _buildDetailedCategory(
                'Services ',
                'Agriculture Farming',
                'assets/images/2.png',
<<<<<<< HEAD
                'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
=======
                'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                IntrantListScreen(), // for now b3ad nbdlha service
>>>>>>> 0c3d475dae0fcf65c210b2e0badf1f3092dce50b
              ),
              const SizedBox(height: 16),

              _buildDetailedCategory(
                'Intrant agricoles',
                'Agriculture Farming',
                'assets/images/3.png',
<<<<<<< HEAD
                'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
=======
                'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                IntrantListScreen(),
>>>>>>> 0c3d475dae0fcf65c210b2e0badf1f3092dce50b
              ),
              
            ],
          ),
        ),
      ),
    );
  }

<<<<<<< HEAD
  Widget _buildDetailedCategory(String title, String title1, String imagePath, String description) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.horizontal(left: Radius.circular(8)),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Text(
                      title1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
=======
  Widget _buildDetailedCategory(
    BuildContext context,
    String title,
    String subtitle,
    String imagePath,
    String description,
    Widget page,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(8)),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
>>>>>>> 0c3d475dae0fcf65c210b2e0badf1f3092dce50b
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color.fromRGBO(252, 175, 9, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
<<<<<<< HEAD
            ),
          ],
=======
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Color.fromRGBO(252, 175, 9, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
>>>>>>> 0c3d475dae0fcf65c210b2e0badf1f3092dce50b
        ),
      ),
    );
  }
}
