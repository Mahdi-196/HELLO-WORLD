% Logtalk
:- object(hello).
    :- initialization(print_hello).
    print_hello :- write('Hello, World!'), nl.
:- end_object. 