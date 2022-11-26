# Attribute sets can be nested, and refer to each other, as long as
# they are recursive.  Letting one attribute set refer to another
# requires understanding which "scope" both share.

# This attribute set has two issues

rec {
  greetings = rec {
    german = {
      text = "Hallo";
      polite = false;
    };

    english = {
      text = "Hello";
      polite = polite;  # reuse the german politeness indicator
    };
  };

  towards = "Nixlings";

  output = {
    message = "${english.text} ${towards}";
  };
}
