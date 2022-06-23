import 'database.dart';

class LocalDbfunction {


  int id;
  var Name;
  var Phone;
  var Email;
  var Password;

  LocalDbfunction({this.id, this.Name, this.Phone, this.Email,this.Password});

LocalDbfunction.empty();

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'Name': Name,
      'Phone': Phone,
      'Email': Email,
      'Password': Password,
    };
    return map;
  }

  LocalDbfunction.fromMap(Map<String, dynamic>map){
      id=map['id'];
      Name=map['Name'];
      Phone=map['Phone'];
      Email=map['Email'];
      Password=map['Password'];
  }

  Future<LocalDbfunction> saveSignUp() async {
    DbHelper dbHelper=new DbHelper();
    var dbClient = await dbHelper.db;
    this.id= await dbClient.insert('sign_up', this.toMap());
    print(this.id);
    return this;
  }






}