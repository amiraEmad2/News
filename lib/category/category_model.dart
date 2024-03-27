
import 'dart:ui';

class CategoryModel{
  final String id ;
  final String title ;
  final String imageName ;
  final Color color ;

  CategoryModel({
    required this.id,
    required this.title,
    required this.imageName,
    required this.color,
  });
static List<CategoryModel> categories=[
  CategoryModel(
      id: 'business' ,
    title: 'Business',
    imageName: 'bussines',
    color: Color(0xFF503436),

  ),
  CategoryModel(
    id: 'entertainment' ,
    title: 'Entertainment',
    imageName: 'environment',
    color: Color(0xFF1A53AD),

  ),
  CategoryModel(
    id: 'sports' ,
    title: 'Sports',
    imageName: 'ball',
    color: Color(0xFFBE181E),

  ),

  CategoryModel(
    id: 'science' ,
    title: 'Science',
    imageName: 'science',
    color: Color(0xFFBEB018),

  ),
  CategoryModel(
    id: 'science' ,
    title: 'Science',
    imageName: 'science',
    color: Color(0xFFBEB018),

  ),
  CategoryModel(
    id: 'science' ,
    title: 'Science',
    imageName: 'science',
    color: Color(0xFFBEB018),

  ),
];
}