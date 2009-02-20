#!/usr/bin/perl
use warnings;
use strict;
use Module::Build;

Module::Build->new(
  module_name => 'String::Fraction',
  requires    => {
    'HTML::Fraction' => '0.40',
  },
  build_requires => { 'Test::More' => '0' },
  create_makefile_pl => 'traditional',
  license => 'perl',
)->create_build_script;
