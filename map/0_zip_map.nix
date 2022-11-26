# Nix has some basic combinator functions that can be very useful for
# processing data.  In this example we start out with two lists, and
# want to create a list of attribute sets from it.

# Let's recreate a common beginner-programming example in Nix: the
# employee database!

# The two functions you will need for this example are:
#
# - lib.zipLists a b (where a and b are lists)
# - map f l (where f is a function and l is a list)


with import <nixpkgs> {}; # ignore this for now

rec {
  employees = [ "Alice" "Bob" "Charlie" "David"];
  roles = ["Engineer" "Manager" "Designer" "Tester"];

  output = {
    list = /* fill this in */;
  };
}
























































/* SOLUTION

rec {
  ...

  output = {
    list = map ({ fst, snd }: { name = fst; role = snd; }) (lib.zipLists employees roles);
  };
}

*/
