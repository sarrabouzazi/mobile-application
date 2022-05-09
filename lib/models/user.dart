class User{
   final String name;
   final String email;
   final String lastname;
   final String phoneNumber;

  User(this.name, this.email, this.lastname, this.phoneNumber);
   User.fromJson(Map<String, dynamic> json)
       : name = json['name'],
         email = json['email'],
         lastname = json['lastname'],
         phoneNumber = json['phoneNumber'];

   Map<String, dynamic> toJson() => {
     'name': name,
     'email': email,
     'lastname':lastname,
     'phoneNumber':phoneNumber,

   };
}