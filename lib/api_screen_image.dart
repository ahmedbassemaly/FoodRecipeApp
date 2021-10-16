import 'dart:convert';
import 'package:http/http.dart' as http;




const myAPI = '9403ed93ad383865fbf47fbb8d597748';
const appIdAPI = 'ab9704c5';

late List foodImage=[];//hits   hits[0].recipe.image

class FoodImage {

  Future foodRecipe(String selectedFood) async {

    var url=Uri.parse('https://api.edamam.com/api/recipes/v2?type=public&q=$selectedFood&app_id=$appIdAPI&app_key=$myAPI');
    http.Response response=await http.get(url);

    if(response.statusCode==200) {
      var data = jsonDecode(response.body);//hits[0].recipe hits[0].recipe.image  hits[0].recipe.image
      foodImage=data['hits'];
      return foodImage;
    }
    else{
      ('Failed to load the Image');
      print(response.statusCode);
    }
  }
}