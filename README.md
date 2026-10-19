# Silver Train Searching

A Rails application for browsing and searching books.

## Requirements

- Ruby 3.2.2 (see `.ruby-version`)
- Bundler 2.5.3 or compatible
- SQLite 3

## Setup

From the project directory, install the Ruby dependencies and create the development database:

```sh
bundle install
bin/rails db:encryption:init
bin/rails credentials:edit --environment development
bin/rails db:migrate
bin/rails db:seed
```

Copy the `active_record_encryption` YAML printed by the first command into the credentials editor, then save and close it. Rails keeps the development credentials key in `config/credentials/development.key`; do not commit or share that key.

The seed task adds 100 sample-catalog entries across fiction, novels, psychology, and Hindi literature. It is safe to rerun and does not delete existing books.

## Run

Start the Rails development server:

```sh
bin/rails server
```

Open <http://localhost:3000>. The home page shows the books listing.

## Tests

Run the test suite with:

```sh
bin/rails test
```
