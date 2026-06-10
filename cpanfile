requires 'perl' => '5.026';

requires 'Mojolicious' => '9.00';
requires 'Mojolicious::Plugin::Fondation::User' => '0';

on 'test' => sub {
    requires 'Test::More' => '1.302190';
};
