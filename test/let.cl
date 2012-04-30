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
  (* comma-separated initializers *)
  a : Int <- let a : Int ,b : Int <- 5 ,c : Int in new Int;
  a : Int <- b <- let a : Int ,b : Int <- a()@B.a() in if a * b - c + d - ~ n then
    while true loop false pool
  else
    false
  fi;
};

(* class TYPE { } *)
class D inherits C {
  (* nested cases. covers lets in the initializer, and let in the ending expression. *)
  
  a : Int <- b <- let a : Int ,b : Int <- 
          let a : Int <- let a : Str in let b : Int <- 5 in true ,b : Int <- a()@B.a() in if a * b - c + d - ~ n then
            while true loop false pool
          else
            false
          fi
   in if a * b - c + d - ~ n then
    while true loop false pool
  else
    false
  fi;
};
