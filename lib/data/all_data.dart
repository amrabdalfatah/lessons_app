import 'package:lessons/model/lesson.dart';

import '../model/category.dart';
import '../model/item.dart';

List<Lesson> lessons = [
  Lesson(
    title: "Lesson 001- 010",
    categories: category_lesson_one,
  ),
  Lesson(
    title: "Lesson 011- 020",
    categories: category_lesson_two,
  ),
  Lesson(
    title: "Lesson 021- 030",
    categories: [],
  ),
];

List<Category> category_lesson_one = [
  Category(
    title: "People",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: items_category_people,
  ),
  Category(
    title: "Amr",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "Mohamed",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "People",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "People",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "People",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "People",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "People",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "People",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "People",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
];
const List<Category> category_lesson_two = [
  Category(
    title: "Weather",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "Amr",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
  Category(
    title: "Mohamed",
    image:
        "https://media.istockphoto.com/id/1368965646/photo/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg?s=612x612&w=0&k=20&c=qYST1TAGoQGV_QnB_vMd4E8jdaQUUo95Sa2JaKSl_-4=",
    items: [],
  ),
];

List<Item> items_category_people = [
  Item(
    title: "Elephant",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzGlDzyY5N-9Udqt3VS8fM0L0thhRQOxKKpdyFA4K_hw&s",
    audio: "assets/audio/elephant.mp3",
    active: false,
  ),
  Item(
    title: "Lion",
    image:
        "https://t3.ftcdn.net/jpg/05/69/30/42/360_F_569304262_RGVohUth9wyR5Msa3CoR4XFvMYE8VG1k.jpg",
    audio: "assets/audio/moti.mp3",
    active: false,
  ),
  Item(
    title: "Rabbit",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzGlDzyY5N-9Udqt3VS8fM0L0thhRQOxKKpdyFA4K_hw&s",
    audio: "assets/audio/elephant.mp3",
    active: false,
  ),
  Item(
    title: "Cat",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzGlDzyY5N-9Udqt3VS8fM0L0thhRQOxKKpdyFA4K_hw&s",
    audio: "assets/audio/elephant.mp3",
    active: false,
  ),
  Item(
    title: "Dog",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzGlDzyY5N-9Udqt3VS8fM0L0thhRQOxKKpdyFA4K_hw&s",
    audio: "assets/audio/elephant.mp3",
    active: false,
  ),
  Item(
    title: "Fish",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzGlDzyY5N-9Udqt3VS8fM0L0thhRQOxKKpdyFA4K_hw&s",
    audio: "assets/audio/elephant.mp3",
    active: false,
  ),
];
