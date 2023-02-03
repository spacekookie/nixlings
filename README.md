![](./logo.png)

❄️💙 **Greetings and welcome to nixlings.**

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

(You will need to have enabled `extra-experimental-features
nix-command` for this to work.  You can either provide this to the CLI
via `--extra-experimental-features nix-command` or create a
configuration file at `~/.config/nix/nix.conf`)

```
extra-experimental-features = nix-command
```
**If you get stuck** you can scroll down to the bottom of the file
(past line 80) to see the solution to the puzzle.

If you have any questions, feel free to open an issue :)


## Excercise order

Some of the excercises are harder than others.  Generally excercises
can be done in any order, but if you're new, the following order is
recommended:

1. attrsets
2. functions
3. map
