reverse([Head|Tail], Accumulator, ReversedList) :- reverse(Tail, [Head|Accumulator], ReversedList). 
reverse([], Accumulator, Accumulator).
rev(List, ReversedList) :- reverse(List, [], ReversedList).