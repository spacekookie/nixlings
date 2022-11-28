# Nix is a functional programming language, which means that functions
# can be passed as parameters, and return types from and to functions.
#
# This can be about as confusing as it sounds :)

rec {
  mkGreeting = greeting: towards: "${greeting} ${towards}";

  output = {
    message = # Invoke the above function so it returns "Hello Nixlings";
  };
}



































































/* SOLUTION

rec {
  output.message = makeMessage "Hello" "Nixlings";
}

Braces around the function call are not needed, since it is unambiguous!

*/
