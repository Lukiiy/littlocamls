let fizzbuzz i =
  if i mod 15 = 0 then
    Printf.printf "FizzBuzz (%d)\n" i
  else if i mod 3 = 0 then
    Printf.printf "Fizz (%d)\n" i
  else if i mod 5 = 0 then
    Printf.printf "Buzz (%d)\n" i
  else
    print_endline (string_of_int i)

let () =
  print_endline "It'z fizzbuzz time!";

  for i = 1 to 128 do
    fizzbuzz i
  done;

  print_endline "wow!!";