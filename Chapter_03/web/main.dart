library recipe_book;

import 'package:angular/angular.dart';
import 'package:angular/animate/module.dart';
import 'package:angular/application_factory.dart';

import 'package:angular_dart_demo/rating/rating_component.dart';
import 'package:angular_dart_demo/recipe_book.dart';

class MyAppModule extends Module {
  MyAppModule() {
    install(new AnimationModule());
    bind(RecipeBookController);
    bind(RatingComponent);
  }
}

void main() {
  applicationFactory()
      .addModule(new MyAppModule())
      .run();
}
