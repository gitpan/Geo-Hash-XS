use strict;
use warnings;
use Test::More;
use Geo::Hash::XS;

ok my $gh = Geo::Hash::XS->new;
isa_ok $gh, 'Geo::Hash::XS';

{
    my @set = $gh->neighbors('xn76gg');
    my @expect = qw/xn76gu xn76uh xn76u5 xn76u4 xn76gf xn76gd xn76ge xn76gs/;
    ok eq_set \@set, \@expect or
        diag "got '@set', but expected '@expect'";
}

{
    my @set = $gh->neighbors('xpst02vt');
    my @expect = qw/xpst02vw xpst02vy xpst02vv xpst02vu xpst02vs xpst02vk xpst02vm xpst02vq/;
    ok eq_set \@set, \@expect or
        diag "got '@set', but expected '@expect'";
}

done_testing;