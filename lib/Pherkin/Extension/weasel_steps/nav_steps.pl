#!perl

use strict;
use warnings;

use Test::BDD::Cucumber::StepFile;

When qr/I navigate to (['"])(.*)\1/, sub {
    my $url = $2;

    S->{ext_wsl}->get($url);
};

1;
