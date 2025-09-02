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

class shoppingItem
{
  int listNumber;         // nummer der Liste in der das Item ist
  String? name;           // der eigentliche Name
  bool? bought;           // schon gekauft?
  itemCategory? category; // die Oberkategorie zu der das Item gehört

  shoppingItem(this.listNumber, this.name, this.bought, this.category);
}

class shoppingList
{
  List<shoppingItem>? items;  //Liste der Items
  List<member>? members;      //Liste der Miteinkäufer dieser Liste
  member? owner;              //Derjenige, der diese Liste angelegt hat und verwaltet

  shoppingList(this.items, this.members, this.owner);
}

class member
{
  String? name;               //name
  String? profilePicture;     //link zum profile picture
  memberGroup? groupID;       //Die Gruppe zu der dieser Mensch gehört

  member(this.name, this.profilePicture, this.groupID);
}