smallest([], Elem, Elem).
smallest([Head|Tail], Elem, Value) :- Head  >  Elem, smallest(Tail, Elem, Value).
smallest([Head|Tail], Elem, Value) :- Head  =<  Elem, smallest(Tail, Head, Value).
min(List, Value) :- List  =  [Head|_], smallest(List, Head, Value).