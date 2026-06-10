package Mojolicious::Plugin::Fondation::User::UI::Bootstrap;
use Mojo::Base 'Mojolicious::Plugin', -signatures;

# ABSTRACT: Web UI for Fondation::User — templates, assets, and i18n

our $VERSION = '0.01';

sub fondation_meta {
    return {
        dependencies => ['Fondation::User', 'Fondation::Layout::Bootstrap'],
        defaults     => {
            title => 'User Management',
        },
    };
}

sub register ($self, $app, $conf) {

    $app->routes->get('/users')->to(
        controller => 'User',
        action     => 'list'
    );

    return $self;
}

1;
