(* Testing errors in expression inside a block. Expressions checked: all below CASE in figure 10.1 (starting from NEW)  *)
class A {
  a : A <- {
    (* invalid LET *)
    let a : A <- A in A;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid LET *)
    let A : a <- A in a;

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid LET *)
    let a : A <- A ,true ,A in true;

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

