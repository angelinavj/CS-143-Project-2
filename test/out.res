#2
_program
  #2
  _class
    A
    B
    "/afs/ir/users/v/e/veni/CS-143-Project-2/test/let.cl"
    (
    #4
    _attr
      a
      Int
      #4
      _new
        B
      : _no_type
    #7
    _attr
      c
      Int
      #7
      _no_expr
      : _no_type
    #9
    _method
      d
      #9
      _formal
        a
        Int
      #9
      _formal
        b
        Bool
      #9
      _formal
        c
        String
      String
      #10
      _assign
        a
        #10
        _int
          5
        : _no_type
      : _no_type
    )
  #17
  _class
    C
    B
    "/afs/ir/users/v/e/veni/CS-143-Project-2/test/let.cl"
    (
    #19
    _attr
      a
      Int
      #19
      _let
        a
        Int
        #11
        _no_expr
        : _no_type
        #19
        _let
          b
          Int
          #19
          _int
            5
          : _no_type
          #19
          _let
            c
            Int
            #-31355693
            _no_expr
            : _no_type
            #19
            _new
              Int
            : _no_type
          : _no_type
        : _no_type
      : _no_type
    #20
    _attr
      a
      Int
      #20
      _assign
        b
        #20
        _let
          a
          Int
          #19
          _no_expr
          : _no_type
          #20
          _let
            b
            Int
            #20
            _static_dispatch
              #20
              _dispatch
                #20
                _object
                  self
                : _no_type
                a
                (
                )
              : _no_type
              B
              a
              (
              )
            : _no_type
            #20
            _cond
              #20
              _sub
                #20
                _plus
                  #20
                  _sub
                    #20
                    _mul
                      #20
                      _object
                        a
                      : _no_type
                      #20
                      _object
                        b
                      : _no_type
                    : _no_type
                    #20
                    _object
                      c
                    : _no_type
                  : _no_type
                  #20
                  _object
                    d
                  : _no_type
                : _no_type
                #20
                _neg
                  #20
                  _object
                    n
                  : _no_type
                : _no_type
              : _no_type
              #21
              _loop
                #21
                _bool
                  1
                : _no_type
                #21
                _bool
                  0
                : _no_type
              : _no_type
              #23
              _bool
                0
              : _no_type
            : _no_type
          : _no_type
        : _no_type
      : _no_type
    )
  #28
  _class
    D
    C
    "/afs/ir/users/v/e/veni/CS-143-Project-2/test/let.cl"
    (
    #31
    _attr
      a
      Int
      #31
      _assign
        b
        #31
        _let
          a
          Int
          #20
          _no_expr
          : _no_type
          #31
          _let
            b
            Int
            #32
            _let
              a
              Int
              #32
              _let
                a
                Str
                #21
                _no_expr
                : _no_type
                #32
                _let
                  b
                  Int
                  #32
                  _int
                    5
                  : _no_type
                  #32
                  _bool
                    1
                  : _no_type
                : _no_type
              : _no_type
              #32
              _let
                b
                Int
                #32
                _static_dispatch
                  #32
                  _dispatch
                    #32
                    _object
                      self
                    : _no_type
                    a
                    (
                    )
                  : _no_type
                  B
                  a
                  (
                  )
                : _no_type
                #32
                _cond
                  #32
                  _sub
                    #32
                    _plus
                      #32
                      _sub
                        #32
                        _mul
                          #32
                          _object
                            a
                          : _no_type
                          #32
                          _object
                            b
                          : _no_type
                        : _no_type
                        #32
                        _object
                          c
                        : _no_type
                      : _no_type
                      #32
                      _object
                        d
                      : _no_type
                    : _no_type
                    #32
                    _neg
                      #32
                      _object
                        n
                      : _no_type
                    : _no_type
                  : _no_type
                  #33
                  _loop
                    #33
                    _bool
                      1
                    : _no_type
                    #33
                    _bool
                      0
                    : _no_type
                  : _no_type
                  #35
                  _bool
                    0
                  : _no_type
                : _no_type
              : _no_type
            : _no_type
            #37
            _cond
              #37
              _sub
                #37
                _plus
                  #37
                  _sub
                    #37
                    _mul
                      #37
                      _object
                        a
                      : _no_type
                      #37
                      _object
                        b
                      : _no_type
                    : _no_type
                    #37
                    _object
                      c
                    : _no_type
                  : _no_type
                  #37
                  _object
                    d
                  : _no_type
                : _no_type
                #37
                _neg
                  #37
                  _object
                    n
                  : _no_type
                : _no_type
              : _no_type
              #38
              _loop
                #38
                _bool
                  1
                : _no_type
                #38
                _bool
                  0
                : _no_type
              : _no_type
              #40
              _bool
                0
              : _no_type
            : _no_type
          : _no_type
        : _no_type
      : _no_type
    )
