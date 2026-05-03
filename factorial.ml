let rec factorial n =
  if n <= 1 then 1
  else n * factorial (n - 1)

let () =
  if Array.length Sys.argv < 2 then (
    prerr_endline "Usage: factorial <int>";
    exit 1
  );

  match int_of_string_opt Sys.argv.(1) with
    | Some integer ->
      Printf.printf "Factorial of %d is %d\n" integer (factorial integer)
    | None ->
      prerr_endline "Argument must be an int";
      exit 1