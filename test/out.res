#24
_program
  #24
  _class
    List
    IO
    "/usr/class/cs143/examples/sort_list.cl"
    (
    #28
    _method
      isNil
      Bool
      #28
      _block
        #28
        _dispatch
          #28
          _object
            self
          : _no_type
          abort
          (
          )
        : _no_type
        #28
        _bool
          1
        : _no_type
      : _no_type
    #30
    _method
      cons
      #30
      _formal
        hd
        Int
      Cons
      #31
      _let
        new_cell
        Cons
        #31
        _new
          Cons
        : _no_type
        #32
        _dispatch
          #32
          _object
            new_cell
          : _no_type
          init
          (
          #32
          _object
            hd
          : _no_type
          #32
          _object
            self
          : _no_type
          )
        : _no_type
      : _no_type
    #41
    _method
      car
      Int
      #41
      _block
        #41
        _dispatch
          #41
          _object
            self
          : _no_type
          abort
          (
          )
        : _no_type
        #41
        _new
          Int
        : _no_type
      : _no_type
    #43
    _method
      cdr
      List
      #43
      _block
        #43
        _dispatch
          #43
          _object
            self
          : _no_type
          abort
          (
          )
        : _no_type
        #43
        _new
          List
        : _no_type
      : _no_type
    #45
    _method
      rev
      List
      #45
      _dispatch
        #45
        _object
          self
        : _no_type
        cdr
        (
        )
      : _no_type
    #47
    _method
      sort
      List
      #47
      _dispatch
        #47
        _object
          self
        : _no_type
        cdr
        (
        )
      : _no_type
    #49
    _method
      insert
      #49
      _formal
        i
        Int
      List
      #49
      _dispatch
        #49
        _object
          self
        : _no_type
        cdr
        (
        )
      : _no_type
    #51
    _method
      rcons
      #51
      _formal
        i
        Int
      List
      #51
      _dispatch
        #51
        _object
          self
        : _no_type
        cdr
        (
        )
      : _no_type
    #53
    _method
      print_list
      Object
      #53
      _dispatch
        #53
        _object
          self
        : _no_type
        abort
        (
        )
      : _no_type
    )
  #56
  _class
    Cons
    List
    "/usr/class/cs143/examples/sort_list.cl"
    (
    #57
    _attr
      xcar
      Int
      #57
      _no_expr
      : _no_type
    #58
    _attr
      xcdr
      List
      #58
      _no_expr
      : _no_type
    #62
    _method
      isNil
      Bool
      #62
      _bool
        0
      : _no_type
    #64
    _method
      init
      #64
      _formal
        hd
        Int
      #64
      _formal
        tl
        List
      Cons
      #65
      _block
        #66
        _assign
          xcar
          #66
          _object
            hd
          : _no_type
        : _no_type
        #67
        _assign
          xcdr
          #67
          _object
            tl
          : _no_type
        : _no_type
        #68
        _object
          self
        : _no_type
      : _no_type
    #72
    _method
      car
      Int
      #72
      _object
        xcar
      : _no_type
    #74
    _method
      cdr
      List
      #74
      _object
        xcdr
      : _no_type
    #76
    _method
      rev
      List
      #76
      _dispatch
        #76
        _dispatch
          #76
          _object
            xcdr
          : _no_type
          rev
          (
          )
        : _no_type
        rcons
        (
        #76
        _object
          xcar
        : _no_type
        )
      : _no_type
    #78
    _method
      sort
      List
      #78
      _dispatch
        #78
        _dispatch
          #78
          _object
            xcdr
          : _no_type
          sort
          (
          )
        : _no_type
        insert
        (
        #78
        _object
          xcar
        : _no_type
        )
      : _no_type
    #80
    _method
      insert
      #80
      _formal
        i
        Int
      List
      #81
      _cond
        #81
        _lt
          #81
          _object
            i
          : _no_type
          #81
          _object
            xcar
          : _no_type
        : _no_type
        #82
        _dispatch
          #82
          _new
            Cons
          : _no_type
          init
          (
          #82
          _object
            i
          : _no_type
          #82
          _object
            self
          : _no_type
          )
        : _no_type
        #84
        _dispatch
          #84
          _new
            Cons
          : _no_type
          init
          (
          #84
          _object
            xcar
          : _no_type
          #84
          _dispatch
            #84
            _object
              xcdr
            : _no_type
            insert
            (
            #84
            _object
              i
            : _no_type
            )
          : _no_type
          )
        : _no_type
      : _no_type
    #89
    _method
      rcons
      #89
      _formal
        i
        Int
      List
      #89
      _dispatch
        #89
        _new
          Cons
        : _no_type
        init
        (
        #89
        _object
          xcar
        : _no_type
        #89
        _dispatch
          #89
          _object
            xcdr
          : _no_type
          rcons
          (
          #89
          _object
            i
          : _no_type
          )
        : _no_type
        )
      : _no_type
    #91
    _method
      print_list
      Object
      #92
      _block
        #93
        _dispatch
          #93
          _object
            self
          : _no_type
          out_int
          (
          #93
          _object
            xcar
          : _no_type
          )
        : _no_type
        #94
        _dispatch
          #94
          _object
            self
          : _no_type
          out_string
          (
          #94
          _string
            "\n"
          : _no_type
          )
        : _no_type
        #95
        _dispatch
          #95
          _object
            xcdr
          : _no_type
          print_list
          (
          )
        : _no_type
      : _no_type
    )
  #100
  _class
    Nil
    List
    "/usr/class/cs143/examples/sort_list.cl"
    (
    #101
    _method
      isNil
      Bool
      #101
      _bool
        1
      : _no_type
    #103
    _method
      rev
      List
      #103
      _object
        self
      : _no_type
    #105
    _method
      sort
      List
      #105
      _object
        self
      : _no_type
    #107
    _method
      insert
      #107
      _formal
        i
        Int
      List
      #107
      _dispatch
        #107
        _object
          self
        : _no_type
        rcons
        (
        #107
        _object
          i
        : _no_type
        )
      : _no_type
    #109
    _method
      rcons
      #109
      _formal
        i
        Int
      List
      #109
      _dispatch
        #109
        _new
          Cons
        : _no_type
        init
        (
        #109
        _object
          i
        : _no_type
        #109
        _object
          self
        : _no_type
        )
      : _no_type
    #111
    _method
      print_list
      Object
      #111
      _bool
        1
      : _no_type
    )
  #116
  _class
    Main
    IO
    "/usr/class/cs143/examples/sort_list.cl"
    (
    #118
    _attr
      l
      List
      #118
      _no_expr
      : _no_type
    #121
    _method
      iota
      #121
      _formal
        i
        Int
      List
      #122
      _block
        #123
        _assign
          l
          #123
          _new
            Nil
          : _no_type
        : _no_type
        #124
        _let
          j
          Int
          #124
          _int
            0
          : _no_type
          #125
          _loop
            #125
            _lt
              #125
              _object
                j
              : _no_type
              #125
              _object
                i
              : _no_type
            : _no_type
            #127
            _block
              #128
              _assign
                l
                #128
                _dispatch
                  #128
                  _new
                    Cons
                  : _no_type
                  init
                  (
                  #128
                  _object
                    j
                  : _no_type
                  #128
                  _object
                    l
                  : _no_type
                  )
                : _no_type
              : _no_type
              #129
              _assign
                j
                #129
                _plus
                  #129
                  _object
                    j
                  : _no_type
                  #129
                  _int
                    1
                  : _no_type
                : _no_type
              : _no_type
            : _no_type
          : _no_type
        : _no_type
        #133
        _object
          l
        : _no_type
      : _no_type
    #137
    _method
      main
      Object
      #138
      _block
        #139
        _dispatch
          #139
          _object
            self
          : _no_type
          out_string
          (
          #139
          _string
            "How many numbers to sort?"
          : _no_type
          )
        : _no_type
        #140
        _dispatch
          #140
          _dispatch
            #140
            _dispatch
              #140
              _dispatch
                #140
                _object
                  self
                : _no_type
                iota
                (
                #140
                _dispatch
                  #140
                  _object
                    self
                  : _no_type
                  in_int
                  (
                  )
                : _no_type
                )
              : _no_type
              rev
              (
              )
            : _no_type
            sort
            (
            )
          : _no_type
          print_list
          (
          )
        : _no_type
      : _no_type
    )
