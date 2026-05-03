let normalize string =
  string
  |> String.lowercase_ascii (* lowercase it and filter out non-alphanumeric characters *)
  |> String.to_seq (* turn into a sequence of characters *)
  |> Seq.filter (fun char ->
       ('a' <= char && char <= 'z') || ('0' <= char && char <= '9')) (* keep only letters and digits *)
  |> String.of_seq (* build it *)

let is_palindrome s =
  let string = normalize s in

  (* recursive loop that checks if letters from one end to another differ or don't *)
  let rec loop x y =
    if x >= y then true (* all letters matched, true *)
    else if string.[x] <> string.[y] then false (* if chars diff, false *)
    else loop (x + 1) (y - 1) (* next letters *)
  in

  loop 0 (String.length string - 1)

let () =
  print_string "Check if a string is a palindrome: ";

  let input = read_line () in

  if is_palindrome input then
    print_endline "It is a palindrome!"
  else
    print_endline "It isn't a palindrome."