(* testing all the errors that might happen with method type of feature
Alternating invalid - valid, so the parser has time to recover, hence it can report
all the errors *)

class A {
  (* invalid feature (method) - name is TYPEID instead of OBJECTID *)
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
  };
};

