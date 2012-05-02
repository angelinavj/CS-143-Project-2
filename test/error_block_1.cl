class A {
  a : A <- {
    (* invalid ID <- expr *)
    A <- true;

    (* valid expr, so parser has time to recover *)
    ~true; 

    (* invalid ID <- expr *)
    a <- Type;

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
  };
};

