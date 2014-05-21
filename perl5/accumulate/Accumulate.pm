package Accumulate;

#I most likely ought to specify a specific verion/year here.
#This covers use warnings/strict
use Modern::Perl;

use Exporter qw(import);

our @EXPORT_OK = qw(accumulate);

# An arrayRef and an codeRef as passed to this subroutine
# A new arrayRef is returned once the operation has been completed against the original array
sub accumulate {
    my ($collection, $operation) = @_;
    my @newCollection;

    # I would have used map here normally; but the README says not to; maybe I'm misunderstanding.
    for my $number (@$collection) {
        my $result = &$operation($number);
        push @newCollection, $result;
    }

    return \@newCollection;
}

1;
