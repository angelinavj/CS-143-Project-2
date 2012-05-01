(* testing all the errors that might happen with attr type of feature
Alternating invalid - valid, so the parser has time to recover, hence it can report
all the errors *)

class A {
  (* invalid feature (attr) - name is TYPEID instead of OBJECTID *)
  A : Int;

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
  a : int <- true;

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
  a : Int <- Tr;

  (* normal feature to recover *)
  a : Int;

  (* invalid feature (attr) - expr is invalid *)
  a : Int <- A <- true;

  (* normal feature to recover *)
  a(b : Int ,c : Int ,d : Int) : Int {
    true
  };

};

