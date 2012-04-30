(* class TYPE inherits TYPE *)
class A inherits B {
  (* ID : TYPE <- expr *)
  a : Int <- new B;

  (* ID : TYPE *)
  c : Int;
  (* ID (formals) : TYPE {expr} *) 
  d(a : Int, b : Bool, c : String) : String {
    a <- 5
  };

};


(* class TYPE { feature; } *)
class C inherits B {
  a : Int <- let a : Int ,b : Int <- 5 ,c : Int in new Int;
};

(* class TYPE { } *)
class D inherits C {

};
