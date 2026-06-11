# Financial-Reports

![language](https://img.shields.io/badge/language-Ruby-red) ![type](https://img.shields.io/badge/type-script-blue) ![data](https://img.shields.io/badge/data-DailyFX%20economic%20calendar-blue) ![status](https://img.shields.io/badge/status-legacy-lightgrey)

![Financial-Reports hero banner](assets/hero.jpg)

A small Ruby script (2017) that bulk-downloads weekly economic calendar CSV files from DailyFX.

## Overview

`download.rb` iterates week by week, starting from the first Sunday of 2012 up to the current date, and downloads each weekly calendar file from `http://www.dailyfx.com/files/Calendar-MM-DD-YYYY.csv` into a local `data/` directory. Files that already exist locally are skipped, so the script can be re-run to fetch only missing weeks.

> **Note**: This is a legacy one-off script. The DailyFX CSV endpoint it relies on may no longer be available, and the code uses the pre-Ruby-2.7 `open(url)` form of `open-uri`.

## Requirements

- Ruby
- Gems: `activesupport`, `open_uri_redirections`

```sh
gem install activesupport open_uri_redirections
```

## Usage

```sh
ruby download.rb
```

Downloaded CSVs are saved to `./data/` as `Calendar-MM-DD-YYYY.csv`, one file per week.

## Project Structure

```text
.
└── download.rb   # the entire tool — weekly CSV downloader
```
