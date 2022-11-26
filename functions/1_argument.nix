# Functions can be passed as arguments which allows them to be lazily
# called in whatever context it makes sense to call them

# Implement makeMessage in such a way that `output.message` becomes "Hallo Nixlings";

rec {
  makeMessage = a: b: /* fill this in */;

  mkGreeting = lang: { "de" = "Hallo"; "en" = "Hello"; }."${lang}";

  pluralize = noun: "${noun}s"; ## this is not generally correct but let's just roll with it

  output = {
    message = (makeMessage /* fill this in */);
  };
}































































/* SOLUTION

rec {
  makeMessage = a: b: "${(a "de")} ${(b "Nixling")}";

  output.message = (makeMessage makeGreeting pluralize);
}


*/
