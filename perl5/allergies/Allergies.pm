package Allergies;

use Modern::Perl;

use Exporter qw(import);

our @EXPORT_OK = qw(new allergic_to list);

sub new {
    my $class = shift;
    my $self = bless {
        allergies => [],
    }, $class;

    return $self;
}

sub allergic_to {
    my $self = shift;
    my ($input) = @_;

    my %allergens = (
         '1' => 'eggs',
         '2' => 'peanuts',
         '4' => 'shellfish',
         '8' => 'strawberries',
        '16' => 'tomatoes',
        '32' => 'chocolate',
        '64' => 'pollen',
       '128' => 'cats',
    );

    for my $allergen (keys %allergens) {
        if ($allergens{$allergen}) {
            push @{$self->{allergies}}, $allergens{$allergen};
            return $allergens{$allergen};
        }
    }
    return 0;
}

sub list {
    my $self = shift;
    return $self->{allergies};
}

1;
