# Orca

[Orca](https://wiki.xxiivv.com/orca) is an esoteric programming language, written in [Uxntal](https://wiki.xxiivv.com/site/uxntal.html).

In Orca, every letter of the alphabet is an operation, where lowercase letters operate on bang, uppercase letters operate each frame. 
For more details, see the complete [operation manual](https://wiki.xxiivv.com/site/orca.html).

## Build

You must have the [Uxn](https://git.sr.ht/~rabbits/uxn/) assembler and emulator.

```sh
uxnasm src/orca.tal bin/orca.rom && uxnemu bin/orca.rom
```

If do not wish to assemble it yourself, you can download [orca.rom](https://rabbits.srht.site/orca-toy/orca.rom).

[![builds.sr.ht status](https://builds.sr.ht/~rabbits/orca-toy.svg)](https://builds.sr.ht/~rabbits/orca-toy?)

### I/O

The `:` operator is used to send note values to other applications, to convert the signal to midi, use the [shim](https://git.sr.ht/~rabbits/shim/).

```sh
uxnemu orca.rom | shim
```

## Operators

To display the list of operators inside of Orca, use `CmdOrCtrl+G`.

- `A` **add**(*a* b): Outputs sum of inputs.
- `B` **subtract**(*a* b): Outputs difference of inputs.
- `C` **clock**(*rate* mod): Outputs modulo of frame.
- `D` **delay**(*rate* mod): Bangs on modulo of frame.
- `E` **east**: Moves eastward, or bangs.
- `F` **if**(*a* b): Bangs if inputs are equal.
- `G` **generator**(*x* *y* *len*): Writes operands with offset.
- `H` **hold**: Holds southward operand.
- `I` **increment**(*step* mod): Increments southward operand.
- `J` **jumper**(*val*): Outputs northward operand.
- `K` **konkat**(*len*): Reads multiple variables.
- `L` **lesser**(*a* *b*): Outputs smallest of inputs.
- `M` **multiply**(*a* b): Outputs product of inputs.
- `N` **north**: Moves Northward, or bangs.
- `O` **read**(*x* *y* read): Reads operand with offset.
- `P` **push**(*len* *key* val): Writes eastward operand.
- `Q` **query**(*x* *y* *len*): Reads operands with offset.
- `R` **random**(*min* max): Outputs random value.
- `S` **south**: Moves southward, or bangs.
- `T` **track**(*key* *len* val): Reads eastward operand.
- `U` **uclid**(*step* max): Bangs on Euclidean rhythm.
- `V` **variable**(*write* read): Reads and writes variable.
- `W` **west**: Moves westward, or bangs.
- `X` **write**(*x* *y* val): Writes operand with offset.
- `Y` **yumper**(*val*): Outputs westward operand.
- `Z` **lerp**(*rate* target): Transitions operand to input.
- `*` **bang**: Bangs neighboring operands.
- `#` **comment**: Halts a line.

### Special

- `=` **synth**(channel octave note): Plays a synth note.
- `:` **midi**(channel octave note vel len): Sends a midi note.
- `;` **note**(octave note): Sends a single note.
- `/` **byte**(hb lb): Sends a single byte.
- `$` **self**(path): Inject file in grid.

## Support

- [theme](https://wiki.xxiivv.com/site/theme.html)
- [snarf](https://wiki.xxiivv.com/site/snarf.html)
- [manifest](https://wiki.xxiivv.com/site/manifest.html)
