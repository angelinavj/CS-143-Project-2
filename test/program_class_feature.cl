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

  (* ID (formal) : TYPE *)
  d(a : Int) : Int {
    a <- 5
  };
};


(* class TYPE { feature; } *)
class C inherits B {
  a : Int <- new B;

  
  d(a : Int, b : Bool, c : String) : String {
    {
      b <- 500;
      b <- isvoid true;
      b <- defg_test(b <- deft_test ,b <- isvoid true, new Int@Cde.b(e <- 5 ,f<- false));
      new Int@Cde.b(e <- 5 ,f <- false ,e <- t);
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
      b <- 500@Cde.b();


      (* b <- 500@Cde.b(b<-500@Cde.b(b<-500@Cde.b(e <- 5 ,f <- false ,e <- t)));
      if b <- 500@Cde.b(b<-500@Cde.b(b<-500@Cde.b(e <- 5 ,f <- false ,e <- t))) then
        {   
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
      fi;*)


    }
  };

};

(* class TYPE { } *)
class D inherits C {

};
