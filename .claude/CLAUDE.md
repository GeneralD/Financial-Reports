# Financial-Reports

Single Ruby script (2017) that bulk-downloads weekly DailyFX economic-calendar
CSVs, iterating week by week from the first Sunday of 2012 to today into
`data/`, skipping files that already exist.

- Language/stack: Ruby with `activesupport` and `open_uri_redirections`;
  uses pre-Ruby-2.7 `open(url)` open-uri form
- Status: legacy one-off — the DailyFX CSV endpoint may no longer exist
- Key paths: `download.rb` (the entire program); output `data/Calendar-MM-DD-YYYY.csv`
- Run (historical): `gem install activesupport open_uri_redirections && ruby download.rb`
