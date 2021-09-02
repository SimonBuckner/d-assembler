import std.stdio;
import std.file;
import std.algorithm;
import std.string;

/**
 * All good things start with a single function.
 */
void main(string[] args)
{
    if (args.length != 2) {
        stderr.writeln("usage: a80 file.asm");
        return;
    }

    string[] lines = splitLines(cast(string)read(args[1]));

    auto split = args[1].findSplit(".asm");
    auto outfile = split[0] ~ ".com";

    assemble(lines, outfile);
}