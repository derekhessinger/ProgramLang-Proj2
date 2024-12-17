(*
*
* Derek Hessinger
* Prof. Ying Li
* CS 333
* 10/2/24
* This is an OCaml program that performs simple addition, prints hello world,
* shows rounding errors with floats, and accepts the user's name
* as input and greets them
*
* 
*)

(* adds 1 to x *)
let inc x =
  x + 1

(* print out inc function result *)
let () = print_int (inc 3)

(* print out hello world *)
let _ = print_endline "\nHello world!"

(* adds two floats *)
let err = 0.1 +. 0.2
(* prints out sum of floats *)
let () = Printf.printf "%.17g\n" err

(* takes user's name as input and prints out name *)
let () =
  print_endline "Enter your name:";
  let name = read_line () in
  print_endline ("Hello " ^ name)