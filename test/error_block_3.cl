(* Testing errors in expression inside a block. Expressions checked: all below CASE in figure 10.1 (starting from NEW)  *)
class A {
  a : A <- {

    (* invalid NEW *)
    new a;
    (* valid expr, so parser has time to recover *)
    ~true;


    (* invalid ISVOID *)
    isvoid A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr + expr *)
    A + A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr - expr *)
    A - A;

    (* valid expr, so parser has time to recover *)
    ~true;


    (* invalid expr * expr *)
    A * A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr / expr *)
    A / A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid ~expr *)
    ~A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr < expr *)
    A < A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr <= expr *)
    A <= A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr = expr *)
    A = A;

    (* valid expr, so parser has time to recover *)
    ~true;


    (* invalid not expr *)
    not A;

    (* valid expr, so parser has time to recover *)
    ~true;


    (* invalid ( expr ) *)
    (A);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid expr *)
    5A;

    (* valid expr, so parser has time to recover *)
    ~true;

    
    (* invalid expr *)
    *a;

    (* valid expr, so parser has time to recover *)
    ~true;
  };
};

