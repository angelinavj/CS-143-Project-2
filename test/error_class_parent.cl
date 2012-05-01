(* This is not a valid class - the parent is invalid (OBJECTID instead of TYPEID) *)
class A inherits b {
  
};

(* This is a valid class *)
class A {
  a : Int;
};

(* This is the same invalid class - we should get an error for this *)
class A inherits b {

};
