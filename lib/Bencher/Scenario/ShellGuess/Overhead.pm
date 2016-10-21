package Bencher::Scenario::ShellGuess::Overhead;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark the startup overhead of guessing shell',
    participants => [
        {
            name => 'load Shell::Guess',
            perl_cmdline => ['-MShell::Guess', '-e1'],
        },
        {
            name => 'load Shell::Guess + running_shell',
            perl_cmdline => ['-MShell::Guess', '-e', '$sh = Shell::Guess->running_shell'],
        },
        {
            name => 'perl (baseline)',
            perl_cmdline => ['-e1'],
        },
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
