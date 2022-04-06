# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.5.1] - 2022-04-06
### Fixed
- Unable to find base schema when running dry-validation 0.13

## [1.5.0] - 2022-04-06
### Added
- undefined method 'size' for nil when  running with dry-validation 0.13 (allow 0.13 to be installed)

## [1.4.0] - 2021-06-15
### Added
- Update `dry-validation` to 1.x

## [1.3.0] - 2021-01-06
### Changed
- `get_balance#success?` now checks if the response body has a `data` element. Sometimes Paxful returns 200, but has an empty body

## [1.2.0] - 2020-12-15
### Changed
- Only consider success for `get_completed_trades` if it meets certain criteria

## [1.1.0] - 2020-11-25
### Added
- Add support for passing in `page` for completed trades

## [1.0.0] - 2020-11-19
### Added
- Ensure that `key` and `secret` are present; raise exception otherwise

## [0.3.0] - 2020-10-12
### Added
- add `trade/completed` endpoint
- add `PaxfulClient::OrderBook` model
- add `PaxfulClient::Trade` model

## [0.2.0] - 2020-09-12
### Changed
- refactor `get_balance` request

## [0.1.0] - 2020-09-12
### Added
- add `get_balance` endpoint
