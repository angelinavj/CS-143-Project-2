(*  *)
class A {

  (* Blocks { expr;+ } *)
  ugliest(languageIHaveEverSeen : String) : Int {
     {

        blockbuster <- 0 - 42;
	ifailatCool;
	5 - 5;
	iloveCool <- false;
	new Int;
	 
     }
  };


  (* while expr loop expr pool *)
  incomprehensible() : Int {
     {
  	i <- 0
  	while i < 5 loop { j <- i; i <- i + 1; } pool 
     }
  };

  soStupid(dumb : String, language : Int, reverse : String, yourFace : String) : Bool {
    {
	j <- 0;
  	while j < 3 loop j <- j + 1 pool;
    }
  };
  

  (* Let bindings - no initialization *)
  hardestSyntaxEver(letBinding : String, wasSoHArd : Int) : Bool {
  	
  };
  

};


(* class TYPE { feature; } *)
class C inherits B {
  a : Int <- new B;
};

(* class TYPE { } *)
class D inherits C {

};
