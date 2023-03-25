class UserModel{
  String? name;
  String? email;
  String? password;
  String? age;
  String? ph;
  String? image;
  String? id;
  String? gender;

  UserModel({this.image,this.id,this.gender,
      this.name, this.email, this.password, this.age, this.ph});

     Map<String,dynamic> tojson(){
       return
           {
             'password':password??"",
             'email':email??"",
             'age':age??"",
             'image':image??"",
             'phone':ph??"",
             'name':name??"",
             'id':id??"",
             'gender':gender??"",
           };
     }
}