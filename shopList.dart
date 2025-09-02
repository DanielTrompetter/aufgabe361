enum itemCategory
{
  meat,
  vegetables,
  drinks,
  personalcare
}

enum memberGroup
{
  family,
  friends,
  camping
}

class ShoppingItem
{
  final int listNumber;         // nummer der Liste in der das Item ist
  String? name;           // der eigentliche Name
  bool? bought;           // schon gekauft?
  itemCategory? category; // die Oberkategorie zu der das Item gehört

  ShoppingItem({required this.listNumber, this.name, this.bought, this.category});
}

class ShoppingList
{
  List<ShoppingItem>? items;  //Liste der Items
  List<Member>? members;      //Liste der Miteinkäufer dieser Liste
  Member? owner;              //Derjenige, der diese Liste angelegt hat und verwaltet

  ShoppingList(this.items, this.members, this.owner);
}

class Member
{
  String? name;               //name
  String? profilePicture;     //link zum profile picture
  memberGroup? groupID;       //Die Gruppe zu der dieser Mensch gehört

  Member(this.name, this.profilePicture, this.groupID);
}