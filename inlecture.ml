let factotial = fun x ->
  let rec aux = fun accum x ->
    if x=1 then accum 
    else aux (accum*x) (x-1)
  in aux 1 x 

let rec fact1 = fun x->
  if x =1 then 1 
  else x*fact1 (x-1)

let _ = print_int (fact1 5)