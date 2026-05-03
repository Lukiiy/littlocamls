open Z

let factorial n =
  let acc = ref one in

  for i = 2 to n do
    acc := mul !acc (of_int i)
  done;

  !acc

let () =
  if Array.length Sys.argv < 2 then (
    prerr_endline "Usage: factorial <int>";
    exit 1
  );

  match int_of_string_opt Sys.argv.(1) with
    | Some integer ->
      Printf.printf "Factorial of %d is %s\n" integer (to_string (factorial integer))
    | None ->
      prerr_endline "Argument must be an int";
      exit 1