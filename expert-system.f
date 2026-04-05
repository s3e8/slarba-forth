\ LISP LIST-BUILDING WORDS IN FORTH-83

variable nil nil nil !														\ the empty list
													( @items -> ) 			\ @items = maximum number of items this list
: newlist 	create here 2+ , nil , 2* allot ;
: first 	@ ; 									( @list -> @first ) 	\ @first is a pointer to first item of list
: null 		@ nil = ;								( @list | nil -> flag ) \ flag = true if list is empty
: tail 		dup null if @ else 2- then ;			( @list -> @tail )		\ @tail is a pointer to the tail of the list