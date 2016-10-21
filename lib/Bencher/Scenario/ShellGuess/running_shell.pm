package Bencher::Scenario::ShellGuess::running_shell;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark running_shell()',
    participants => [
        {
            module => 'Shell::Guess',
            function => 'running_shell',
            code_template=>'my $s = Shell::Guess->running_shell; $s->name',
        },
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
