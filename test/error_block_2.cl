(* Testing errors in expression inside a block. Expressions checked: ID([expr [,expr]*] ), case, and if then else *)
class A {
  a : A <- {
    (* invalid ID() *)
    A();

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid ID([expr]) - expr is invalid *)
    a(A);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid ID([expr, expr]) - secondexpr is invalid *)
    a(true ,A);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid ID([expr, expr]) - two invalid expressions *)
    a(A ,A);

    (* valid expr, so parser has time to recover *)
    ~true;

    (* invalid if expr then expr else expr fi *)
    if A then
      A
    else
      A
    fi;


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
    esac;
  };
};

