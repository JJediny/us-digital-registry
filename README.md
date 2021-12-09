# Ringsail

Ringsail is a registry built in Ruby on Rails to gather, organize, and make available information about social media accounts run by large organizations.

## Purpose

The U.S. General Services Administration created Ringsail as a registry of all social media accounts managed by U.S. federal government agencies and programs. We hope that any large organization that manages disparate social media accounts will be able to use it.

As built, it allows anyone with a .gov or .mil email address to register a social media account as an official government account. The information gathered about these social media accounts is then made available via an API.

## Development

Running locally, install Docker and Docker compose

```
# update docker-compose.yml file ENV as needed
docker-compose build
docker-compose up
```

Deploying to Cloud.gov

```
PLACEHOLDER
```

## Requirements

Ringsail is built on Ruby 2.4.6 and Rails 5.2.0, backed by a MySQL 5 database.

## Social Media Plugins

Social Media services change rapidly, so Ringsail allows new services to be added as plug-ins.

See `lib/services/twitter_service.rb` for a good example of the service plug-in style.

To submit a new service for inclusion in this registry, please fork this repository, add your service, and submit a pull request with the proposed change.