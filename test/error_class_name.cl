(* This is not a valid class - the name is invalid (OBJECTID instead of TYPEID) *)
class a {
  
};

(* This is a valid class *)
class A {
  a : Int;
};

(* The same invalid class - we should get the error for this *)
class a {
  
};
