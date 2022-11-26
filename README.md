![](./logo.png)

❄️💙  Greetings and welcome to nixlings.

This project contains small exercises to get you used to reading and
writing Nix code.  This includes reading and responding to error
messages from the Nix daemon.


## Exercise structure

Each category has a set of files which should be solved in order of
their file-names (0_basic, 1_foo, 2_bar, ...).  Some of the more
complicated excercises contain the solution towards the end of the
file.

To run an excercise you should use the `nix eval` command, as follows:

```
$ nix eval -f <file> output
```

This command evaluates the given file after `-f` and then attempts to
evaluate `output` for the given file.  What that means is that only
the `output` part of each of the excercise attribute sets is displayed
in your terminal.

If you have any questions, feel free to open an issue :)

