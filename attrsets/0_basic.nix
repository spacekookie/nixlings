# An attribute set (also called "attrset") is a key-value structure.
# It uses { } as delimiters and requires key = value pairs to be
# terminated by a ;.
# { } is a valid attrset, also called "the empty set".


# The following attribute set has some issues

{
  output = {
    message = "Hello Nixlings"
  };
}
