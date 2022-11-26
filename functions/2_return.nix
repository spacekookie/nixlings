# Functions can also be returned from functions!  This is actually
# what happens when you pre-declare a function (such as in the
# previous example).  This snippet is basically the same as the
# previous, except it uses anonymous functions.

# Fill in the makeMessage function to return a function which only
# takes a single parameter.  Again, remember ${}!

# Scroll down for the solution

rec {
  makeMessage = a: (b: /* fill in this bit */);

  # mkGreeting = lang: { "de" = "Hallo"; "en" = "Hello"; }."${lang}";
  # pluralize = noun: "${noun}s"; ## this is not generally correct but let's just roll with it

  output = {
    message = (makeMessage "de") "Nixling";
  };
}





























































/*

The solution is:

rec {
  makeMessage = a: (b: "${{ "de" = "Hallo"; "en" = "Hello"; }."${a}"} ${b}s");

  output.message = (makeMessage "de") "Nixling";
}

Btw: braces around "makeMessage" are needed, because we want to call
it as a function _first_.

*/
