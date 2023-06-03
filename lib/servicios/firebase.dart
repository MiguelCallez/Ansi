import 'package:cloud_firestore/cloud_firestore.dart';
FirebaseFirestore db=FirebaseFirestore.instance;

Future<List>getPeople()async{
  List persona =[];
   CollectionReference collectionReferencePersona=db.collection('persona');
   QuerySnapshot queryPersona = await collectionReferencePersona.get();
   queryPersona.docs.forEach((documento) { 
    persona.add(documento.data());
   });
  return persona;
 
}
Future <void> savePersona(String name,String apellido,String genero,String mail,String nombreUsuario,String clave) async{
  await db.collection("persona").add({name:name,apellido:apellido,genero:genero,mail:mail,nombreUsuario:nombreUsuario,clave:clave});
}
