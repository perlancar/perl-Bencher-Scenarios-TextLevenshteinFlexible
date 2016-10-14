package Bencher::Scenario::TextLevenshteinFlexible::levenshtein_l;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark levenshtein_l()',
    modules => {
    },
    participants => [
        {
            fcall_template => "Text::Levenshtein::XS::distance(<word1>, <word2>)",
        },
        {
            fcall_template => "Text::Levenshtein::Flexible::levenshtein_l(<word1>, <word2>, <limit>)",
        },
    ],
    datasets => [
        { args => {word1=>"program", word2=>"porgram", limit=>1 } },
        { args => {word1=>"program", word2=>"porgram", limit=>2 } },
    ],
    on_result_failure => 'warn',
};

1;
# ABSTRACT:

=head1 SEE ALSO
