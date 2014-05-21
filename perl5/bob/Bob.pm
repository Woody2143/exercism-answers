package Bob;

use Modern::Perl;

use Exporter qw(import);

our @EXPORT_OK = qw(hey);

sub hey {
    my ($var) = @_;
    given ($var) {
        when ( ( $_ !~ /\p{Ll}/ ) && ( $_ =~ /\p{Lu}/ ) ) { return 'Woah, chill out!'; }
        when ( /\?$/ ) { return 'Sure.'; }
        when ( ( $_ =~ /\p{Ll}/ ) || ( $_ =~ /\p{Lu}/ ) || ( $_ =~ /\p{N}/ ) )  { return 'Whatever.'; }
        default { return 'Fine. Be that way!'; }
    }
}

1;
