class MealsModel {
  String? meal;
  String? category;
  String? instructions;
  String? mealThumb;
  MealsModel({ this.meal, this.category, this.instructions, this.mealThumb});
factory MealsModel.fromJson(Map<String, dynamic> json) {
    return MealsModel(
      meal: json['strMeal']??"no meal",
      category: json['strCategory']??"no category",
      instructions: json['strInstructions']??"no manual",
      mealThumb: json['strMealThumb']?? "no image",
    );
  }



}