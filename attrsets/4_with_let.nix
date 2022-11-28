# This is a bit of a harder excercise!
#
# Remember that a let ... in has a similar syntax to attribute sets
# (entries are terminated with ';').  Hint: remember the 'with'
# keyword

let
  values = { a = 13; b = 12; c = 11; };
  doubleValues = /* create a list with the same values as above,
                    but each number is doubled (and without explicitly
                    writing out the values yourself!) */
in
rec {
  myValues = /* create a list with [13 12 11] without writing the word "values" more than once! */;
  
  output = {
    message = "My favourite numbers are: [ ${toString myValues} ] (${toString doubleValues} are also fine)";
  };
}
