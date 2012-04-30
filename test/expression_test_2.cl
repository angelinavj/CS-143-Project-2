
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
	      {
          new Int;
        };
     }
  };


  (* while expr loop expr pool *)
  incomprehensible() : Int {
     {
  	i <- 0;
  	while i < 5 loop { j <- i; i <- i + 1; } pool ;

    
    (* while expr loop expr pool with complicated expr *)
    while (
    if b <- 500 then
        {   
          true@Cde.b();
          new Int@Cde.b({
            e <- 5;
            f <- false;
          }, {
            e <- 5;
          }, abc({
            e <- 5;
            f <- false;
          }, {
            e <- 5;
          }), f <- false ,e <- t);
          b <- false;
        }
      else
        b <- defg_test(b <- deft_test ,b <- isvoid true, new Int@Cde.b(e <- 5 ,f<- false), if b <- isvoid true then b <- deft_test else b <- isvoid true fi, new Int@Cde.b({
          e <- 5;
          f <- false;
        }, {
          e <- 5;
        }, abc({
          e <- 5;
          f <- false;
        }, {
          e <- 5;
        }), f <- false ,e <- t))
      fi) loop
      a <- 5 + b <- 10
    pool;

    while { 
      while a <- 3 loop
        b <- c(new Int, new Baraewraeala)
      pool;
     
      while a <- 3 loop
        b <- 5
      pool;
    }
    loop
      b <- 5
    pool;
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
     what <- false  			         	
  };
  

};


(* class TYPE { feature; } *)
class C inherits B {
  a : Int <- new B;
 
  (* Testing ISVOID *) 
  soStupid(dumb : String, language : Int, reverse : String, yourFace : String) : Bool {
    {
      isvoid {
	      j <- 0;
  	    while j < 3 loop j <- j + 1 pool;
      };

      if isvoid {
	      j <- 0;
  	    while j < 3 loop j <- j + 1 pool;
      } then
        j <- 0
      else
        j <- 0
      fi;

      
    }
  }; 
};

(* class TYPE { } *)
class D inherits C {
  (* testing CASE *)

  soStupid(dumb : String, language : Int, reverse : String, yourFace : String) : Bool {
    {
    (* Nested cases *)
    case {
      isvoid {
	      j <- 0;
  	    while j < 3 loop j <- j + 1 pool;
      };

      if isvoid {
	      j <- 0;
  	    while j < 3 loop j <- j + 1 pool;
      } then
        j <- 0
      else
        j <- 0
      fi;
    } of
      a : A => simple <- true;
      b : B => case a(b <- 3 ,c <- 8) of
                  a : A => simple <- true;
                  b : B => also_simple <- (8);
               esac;
    esac;

    (* Only one case. Use multiple (combined) expr forms *)
    case a <- b()@B.b() of
      a : A => simple <- true;
    esac;
    }
  }; 
};

class D inherits C {

  a() : B {
    (* Precedence *)
    ~ a + b - c * d / e + true + false + ~ f + ~ g <= ~ g + ~f + e / d * c - b + not a < not abc = abc + cde / isvoid a + a() + a(~ a + b - c ,~f + e / d * c) + not case a < 3 of abc : A => 5; esac = ( ~ a + b - c * d / e + ~ f + ~ g <= ~ g + ~f + e / d * c - b + not a < not abc = abc + cde / isvoid a + a() + a(~ a + b - c ,~f + e / d * c) + not case a < 3 of abc : A => "abcdefggg"; esac) 
  };
};
