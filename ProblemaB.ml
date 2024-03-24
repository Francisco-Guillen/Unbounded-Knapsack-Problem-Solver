let max_lucro n tabela_precos =
  let memo = Array.make (n+1) (0) in (* Starts the memoisation array *)
  let rec lucro m i = (* Auxiliary function for calculating maximum profit *)
    if m = 0 || i >= Array.length tabela_precos then 0 (* If there are no more slices or if the value i is greater than the table size, returns 0 *)
    else if memo.(m) <> 0 then memo.(m) (* If the result has already been calculated, returns the memoised value *)
    else
      let maximo = ref 0 in (* Starts the variable for maximum profit *)
      let (tamanho, preco) = tabela_precos.(i) in (* Inserts the table value of position i into the size and price variables *)
      if tamanho <= m then (* If the cake has space to insert the slice *)
        maximo := max !maximo (preco + lucro (m-tamanho) (i)); (* Update the value of the maximum, if necessary, with the price of the slice in question and the rest of the cake *)
      maximo := max !maximo (lucro m (i+1)); (* Checks what the maximum profit is without including the previous slice *)
      memo.(m) <- !maximo; (* Memoises the value found *)
      !maximo
  in
  lucro n 0
;;

(* Reading the input *)
let n = Scanf.sscanf (read_line ()) "%d" (fun x -> x) in
let m = Scanf.sscanf (read_line ()) "%d" (fun x -> x) in
let tabela_precos = Array.make m (0,0) in
if m <= n then
  for i = 0 to m-1 do
    let tamanho, preco = Scanf.sscanf (read_line ()) "%d %d" (fun x y -> (x,y)) in
    tabela_precos.(i) <- (tamanho, preco)
  done;

(* Sorts the price list by the ratio of price to size *)
(* This is done so that the max_profit function first checks the slices that have the best cost-benefit ratio *)
Array.sort (fun (t1,p1) (t2,p2) -> compare (float_of_int p1 /. float_of_int t1) (float_of_int p2 /. float_of_int t2)) tabela_precos;

(* Calculates and displays the result *)
let lucro_maximo = max_lucro n tabela_precos in
print_int lucro_maximo;
print_newline ();;

(* Bibliography:
    https://cs3110.github.io/textbook/chapters/ds/memoization.html 
    https://www.geeksforgeeks.org/unbounded-knapsack-repetition-items-allowed/ 
    https://www.geeksforgeeks.org/greedy-algorithms/*)