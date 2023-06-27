# Go Blueprint

## Description

Template for creating a new Go project.
This blueprint repository has been written based on my personal experience with Go language and it will be manually maintained.
Feel free to copy this template and edit it based on your/your company needs.

## Repository structure

The repository structure is the following one:

```
├── bin                         # script used to generate the templates without any manual operation
└── templates
    ├── all                     # useful for complete monorepo Go project
    ├── common-application      # useful for common Go application
    ├── go                      # useful for common Go scripts
    ├── other                   # useful for common generic Go projects
    ├── service-application     # useful for Go service application
    └── web-application         # useful for Go Web application
```