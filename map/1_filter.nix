# This is a continuation of the first excercise.  We assume a list of
# attribute sets to describe an employee.  For the sake of simplicity
# we won't enforce the types for these entries (although we could if
# we wanted to!)

# In this example we want to be able to search for entries based on a
# particular condition being met.
#
# The relevant function you will want to use here is called
# `lib.filter f l`, where f is a function and l is a list.

with import <nixpkgs> {}; # ignore this for now

rec {
  employees = [ { name = "Alice"; role = "Engineer"; }
                { name = "Bob"; role = "Manager"; }
                { name = "Charlie"; role = "Designer"; }
                { name = "David"; role = "Tester"; } ];

  findByRole = role: /* fill this in */;
  findByName = name: /* fill this in */;

  output = {
    alice = findByName "Alice";
    designer = findByRole "Designer";
  };
}























































/* SOLUTION

rec {
  employees = [ ... ];

  findByRole = role: lib.filter (e: e.role == role) employees;
  findByName = name: lib.filter (e: e.name == name) employees;
}

*/
