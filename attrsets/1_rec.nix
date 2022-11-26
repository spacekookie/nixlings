# Attribute sets can refer to themselves, but a special syntax is
# required for this to work

# Fix the following attrset to generate a message

{
  greeting = "Hello";
  towards = "Nixlings";

  metadata.amount = 7;
  
  output = {
    message = "Saying '${greeting} ${towards}' ${builtins.toString metadata.amount} times";
  };
}
