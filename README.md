# CF Table
Simple cli to show the results from `cf curl` in a table.

## Installation

```shell
gem install cf-table
```

## Usage

```shell
> cf curl /v2/apps | cf-table
Table to wide, please select some columns:
+----------------------------+-------------------------+-------------------+----------------------+------------------------+
| name                       | production              | space_guid        | stack_guid           | buildpack              |
| detected_buildpack         | environment_json        | memory            | instances            | disk_quota             |
| state                      | version                 | command           | console              | debug                  |
| staging_task_id            | package_state           | health_check_type | health_check_timeout | staging_failed_reason  |
| staging_failed_description | diego                   | docker_image      | package_updated_at   | detected_start_command |
| enable_ssh                 | docker_credentials_json | ports             | space_url            | stack_url              |
| events_url                 | service_bindings_url    | routes_url        |                      |                        |
+----------------------------+-------------------------+-------------------+----------------------+------------------------+

> cf curl /v2/apps | cf-table name detected_buildpack
+---------------------+--------------------+
| name                | detected_buildpack |
+---------------------+--------------------+
| starkandwayne-ghost | Node.js            |
| trycf               |                    |
| trycf-dashboard     |                    |
| cisco-training      |                    |
| github-shields      | Go                 |
| training            |                    |
| simple-go-web-app   | Go                 |
| training-preview    |                    |
| starkandwayne       |                    |
| stannis-ge          | go 1.6.0           |
| spruce              |                    |
+---------------------+--------------------+

```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cloudfoundry-community/cf-table.
