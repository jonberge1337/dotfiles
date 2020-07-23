#!/usr/bin/env perl -w

use strict;
use warnings;
use v5.30;

my $archivo = "/sys/class/net/enp2s0/statistics/rx_bytes";
my $rx_bytes = do { local $/ = undef; open my $fh, '<', $archivo; <$fh> };

print "$rx_bytes";
sleep 1;
my $rx_bytes_fin = do { local $/ = undef; open my $fh, '<', $archivo; <$fh> };
print "$rx_bytes_fin";
print $rx_bytes_fin - $rx_bytes . "\n";
