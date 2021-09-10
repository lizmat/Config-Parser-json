use Config::Parser;
use JSON::Fast:ver<0.16>;

class Config::Parser::json:ver<2.0.0>:auth<zef:lizmat> is Config::Parser {
    method read(Str:D $path --> Associative:D) {
         from-json $path.IO.slurp
    }
    method write(Str:D $path, %config --> Bool:D) {
        $path.IO.spurt(to-json %config)
    }
}

=begin pod

=head1 NAME

Config::Parser::json

=head1 DESCRIPTION

A JSON parser for L<Config|https://github.com/scriptkitties/p6-Config>.

=head1 AUTHORS

Robert Lemmen (2018-2020), Elizabeth Mattijsen <liz@raku.rocks> (2021-)

Source can be located at: https://github.com/lizmat/Config-Parser-json . Comments and
Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2018-2020 Robert Lemmen, 2021 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
