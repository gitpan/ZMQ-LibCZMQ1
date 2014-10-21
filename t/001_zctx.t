use strict;
use Test::More;

BEGIN {
    use_ok "ZMQ::LibCZMQ1", qw(:zctx);
}

diag "Using czmq version " . scalar ZMQ::LibCZMQ1::czmq_version();

subtest 'basic' => sub {
    my $ctx = zctx_new();
    ok $ctx, "new context";
    isa_ok $ctx, "ZMQ::LibCZMQ1::Zctx";
    zctx_destroy( $ctx );
};

done_testing;