# As you saw in previous examples you can access an attribute set via
# the "dot-syntax".  This also works for dynamic values!  It's all
# strings.

# Complete this example!  Remember the ${} syntax for string
# interpolation.  Also a hint: nesting :)

rec {
  greetings = {
    "de" = "Hallo";
    "en" = "Hello";
    "eo" = "Saluton";
    "fr" = "Salut";
  };

  makeGreeting = lang: /* fill in this bit */;
  
  output = {
    message = (makeGreeting "en"); # This should print "$X Nixlings"
                                   # where $X is one of the greetings
                                   # of your choice (also feel free to
                                   # add other greetings if you speak
                                   # different languages)
  };
}
