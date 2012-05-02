class A {
  (* invalid feature (attr) - name is TYPEID instead of OBJECTID *)
  A : Int <- {
    (* invalid ID <- expr *)
    A * A <- true;

    (* valid expr, so parser has time to recover *)
    ~true; 

    (* invalid ID <- expr *)
    a * a <- Type;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - should be TYPEID, but given OBJECTID *)
    a@a.a();

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid expr *)
    A@A.a();


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - should be OBJECTID, but given TYPEID *)
    a@A.A();


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid expr *)
    a@A.a(Type);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid expr *)
    a@A.a(Type);


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid [expr] *)
    a@A.a(Type);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid [expr, expr] *)
    a@A.a(5 ,Type);

    (* valid expr, so parser has time to recover *)
    ~true;

    {
      A();

      ~true;
      {
        (* invalid ID([expr]) - expr is invalid *)
        a(A);

        (* valid expr, so parser has time to recover *)
        ~true;
      };
    };
  };


  (* normal feature to recover *)
  a : Int;


  a : Int  <- {
    (* invalid ID <- expr *)
    A * A <- true;

    (* valid expr, so parser has time to recover *)
    ~true; 

    (* invalid ID <- expr *)
    a * a <- Type;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - should be TYPEID, but given OBJECTID *)
    a@a.a();

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid expr *)
    A@A.a();


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - should be OBJECTID, but given TYPEID *)
    a@A.A();


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid expr *)
    a@A.a(Type);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid expr *)
    a@A.a(Type);


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid [expr] *)
    a@A.a(Type);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr[@TYPE].ID([expr[,expr]* ]) - invalid [expr, expr] *)
    a@A.a(5 ,Type);

    (* valid expr, so parser has time to recover *)
    ~true;

    {
      A();

      ~true;
      {
        (* invalid ID([expr]) - expr is invalid *)
        a(A);

        (* valid expr, so parser has time to recover *)
        ~true;
      };
    };
  };


  (* normal feature to recover *)
  a : Int;
  (* invalid feature (attr) - return_type is objectid instead of typeid *)
  a : int;

  (* normal feature to recover *)
  a(b : Int ,c : Int ,d : Int) : Int {
    true
  };


  (* invalid feature (attr) - name is TYPEID instead of OBJECTID *)
  A : Int <- true;

  (* normal feature to recover *)
  a : Int;

  (* invalid feature (attr) - return_type is objectid instead of typeid *)
  a : int <- true = a : Int;

  (* normal feature to recover *)
  a(b : Int ,c : Int ,d : Int) : Int {
    true
  };


  (* invalid feature (attr) - name, expr invalid *)
  A : Int <- Tr;

  (* normal feature to recover *)
  a : Int;

  (* invalid feature (attr) - return_type, expr is invalid *)
  a : int <- A <- true;

  (* normal feature to recover *)
  a(b : Int ,c : Int ,d : Int) : Int {
    true
  };

  (* invalid feature (attr) - expr invalid *)
  a : Int <- {
    (* invalid ID([expr, expr]) - secondexpr is invalid *)
    a(true ,A);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid ID([expr, expr]) - two invalid expressions *)
    a(A / A ,A + A);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid if expr then expr else expr fi *)
    if A then
      A
    else
      A
    fi;
  };


  (* normal feature to recover *)
  a : Int;

  (* invalid feature (attr) - expr is invalid *)
  a : Int <- A <- true;

  (* normal feature to recover *)
  a(b : Int ,c : Int ,d : Int) : Int {
    true
  };


  A(b : Int ,c : Int ,d : Int) : Int {
    true
  };

  (* normal feature to recover *)
  a : Int;

  (* invalid feature (method) - return_type is objectid instead of typeid *)
  a() : int {
    true
  };

  (* normal feature to recover *)
  a(b : Int ,c : Int ,d : Int) : Int {
    true
  };

  (* invalid feature (method) - return_type is OBJECTID instead of TYPEID and name is TYPEID instead of OBJECTID*)
  A() : int {
    true
  };

  (* normal feature to recover *)
  a(b : Int ,c : Int ,d : Int) : Int {
    true
  };

  (* invalid feature (method) - expr invalid *)
  a() : Int {
    A <- true;
  };

  (* normal feature to recover *)
  a(b : Int ,c : Int ,d : Int) : Int {
    true
  };

  (* invalid feature (method) - return and expr invalid *)
  a() : int {
    A <- true;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid if expr then expr else expr fi *)
    if a then
      A
    else
      A
    fi;


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid if expr then expr else expr fi *)
    if A then
      a
    else
      A
    fi;


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid if expr then expr else expr fi *)
    if A then
      A
    else
      a
    fi;


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid case statement *)
    case A of
      a : A => true;
    esac;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid case statement *)
    case A of

    esac;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid case statement *)
    case true of
      A : A => true;
    esac;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid case statement *)
    case true of
      A : a => True;
    esac;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid case statement *)
    case A of
      A : a => True;
      b : B =>  case true of
          A : A => true;
        esac;
    esac;
  };

};

(* This is a valid class *)
class A {
  a : Int;
};

(* This is the invalid - we should get an error for this *)
class A inherits b {
  a : A <- {
    (* invalid LET *)
    let a : A <- A in A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid LET *)
    let A : a <- A in case A of
      a : A => true;
    esac;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid LET *)
    let a : A <- A ,true ,A in {
      A();

      ~true;
      {
        (* invalid ID([expr]) - expr is invalid *)
        a(A);

        (* valid expr, so parser has time to recover *)
        ~true;
      };
    };

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid LET *)
    let a : A <- A ,true ,A in A;


    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid LET - nested *)
    let a : A <- A ,true ,let a : A <- A ,true ,A in true ,true ,let a : A <- true in true;
  };

  a : A;
  a : A <- let a : A <- A ,true ,let a : A <- A ,true ,A in true ,true ,let a : A <- true in true;
};
