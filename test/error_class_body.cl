(* This is not a valid class - the body is invalid (feature not ended with ;) *)
class A {
  a : Int 
};

(* This is a valid class *)
class A {
  a : Int;
};


(* This is not a valid class - if we recover, we should get an error for this *)
class A {
  a : Int 
};
