# Imagine you are the payroll department.  You have data on each of
# the employees, as well as pay-bands based on each role.

# You need to generate a payroll report, of the following format:
#
# {
#    "Engineer" = {
#      payout = /* Monthly amount */;
#      recipients = [ /* a list of recipients of this payout */ ];
#    };
#
#    ...
# }

# Relevant function: mapAttrs f a
#
# where `f` is a function (which takes two arguments) and `a` is an
# attribute set
#
# Also consider using your solution for "findByRole" from earlier to
# make this example easier to read!


with import <nixpkgs> {}; # ignore this for now

rec {
  employees = [ { name = "Alice"; role = "Engineer"; }
                { name = "Bob"; role = "Manager"; }
                { name = "Charlie"; role = "Designer"; }
                { name = "David"; role = "Tester"; }
                { name = "Evelyn"; role = "Engineer"; }
                { name = "Frank"; role = "Designer"; }
                { name = "Greta"; role = "Tester"; } ];

  roles = {
    Engineer = 90000;
    Manager = 110000;
    Designer = 85000;
    Tester = 75000;
  };

  processPayroll = role: yearlyPayout: /* fill this in */;

  output = {
    payroll = /* fill this in */;
  };
}






















































/* SOLUTION

rec {
  ...

  findByRole = role: lib.filter (e: e.role == role) employees;

  processPayroll = role: yearlyPayout: {
    payout = yearlyPayout / 12.0;
    recipients = map (entry: entry.name) (findByRole role);
  };

  output = {
    payroll = lib.mapAttrs processPayroll roles;
  };
}

*/
