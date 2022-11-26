# Nix is a functional programming language, which means that functions
# can be passed as parameters, and return types from and to functions.
#
# This can be about as confusing as it sounds :)

{
  mkGreeting = greeting: towards: "${greeting} ${towards}";

  output = {
    message = # Invoke the above function so it returns "Hello Nixlings";
  };
}
