#!/bin/bash

# This command will structure a Go project following the layout
# https://github.com/golang-standards/project-layout/blob/master/README.md
# This is a basic layout for Go application projects.
# It's not an official standard defined by the core Go dev team; however, it is a set of common
# historical and emerging project layout patterns in the Go ecosystem.
# Some of these patterns are more popular than others.
# It also has a number of small enhancements along with several supporting directories common to any
# large enough real world application.
# Possible allowed commands from root: 
# > sh bin/init-go-project.sh go
# > sh bin/init-go-project.sh service-application
# > sh bin/init-go-project.sh web-application
# > sh bin/init-go-project.sh common-application
# > sh bin/init-go-project.sh other
# > sh bin/init-go-project.sh all

# Go Directories
DIR_CMD='cmd'
DIR_INTERNAL='internal'
DIR_PKG='pkg'
DIR_VENDOR='vendor'
DIRS_GO=(
    $DIR_CMD
    $DIR_INTERNAL
    $DIR_PKG
    $DIR_VENDOR
)
# Service Application Directories
DIR_API='api'
DIRS_SERVICE_APPLICTATION=(
    $DIR_API
)
# Web Application Directories
DIR_WEB='web'
DIRS_WEB_APPLICATION=(
    $DIR_WEB
)
# Common Application Directories
DIR_CONFIGS='configs'
DIR_INIT='init'
DIR_SCRIPTS='scripts'
DIR_BUILD='build'
DIR_DEPLOYMENTS='deployments'
DIR_TEST='test'
DIRS_COMMON_APPLICATION=(
    $DIR_CONFIGS
    $DIR_INIT
    $DIR_SCRIPTS
    $DIR_BUILD
    $DIR_DEPLOYMENTS
    $DIR_TEST
)
# Other Directories
DIR_DOC='docs'
DIR_TOOLS='tools'
DIR_EXAMPLES='examples'
DIR_THIRD_PARTY='third_party'
DIR_GITHOOKS='githooks'
DIR_ASSETS='assets'
DIR_WEBSITE='website'
DIRS_OTHER=(
    $DIR_DOC
    $DIR_TOOLS
    $DIR_EXAMPLES
    $DIR_THIRD_PARTY
    $DIR_GITHOOKS
    $DIR_ASSETS
    $DIR_WEBSITE
)

CATEGORY_TO_CREATE=$1
case $CATEGORY_TO_CREATE in
    # Create Go Directories
    go)
        for DIR_TO_CREATE in "${DIRS_GO[@]}"
        do 
            echo 'Creating folder '.$DIR_TO_CREATE
            mkdir $DIR_TO_CREATE
        done
        ;;

    # Create Service Application Directories
    service-application)
        for DIR_TO_CREATE in "${DIRS_SERVICE_APPLICTATION[@]}"
        do
            echo 'Creating folder '.$DIR_TO_CREATE
            mkdir $DIR_TO_CREATE
        done
        ;;
    
    # Create Web Application Directories
    web-application)
        for DIR_TO_CREATE in "${DIRS_WEB_APPLICATION[@]}"
        do
            echo 'Creating folder '.$DIR_TO_CREATE
            mkdir $DIR_TO_CREATE
        done
        ;;
    
    # Create Service Application Directories
    common-application)
        for DIR_TO_CREATE in "${DIRS_COMMON_APPLICATION[@]}"
        do
            echo 'Creating folder '.$DIR_TO_CREATE
            mkdir $DIR_TO_CREATE
        done
        ;;
    
    # Create Service Application Directories
    other)
        for DIR_TO_CREATE in "${DIRS_OTHER[@]}"
        do
            echo 'Creating folder '.$DIR_TO_CREATE
            mkdir $DIR_TO_CREATE
        done
        ;;

    # All Directories
    all)
        for DIR_TO_CREATE in "
            ${DIRS_GO[@]}
            ${DIRS_SERVICE_APPLICTATION[@]}
            ${DIRS_WEB_APPLICATION[@]}
            ${DIRS_COMMON_APPLICATION[@]}
            ${DIRS_OTHER[@]}
        "
        do
            echo 'Creating folder '.$DIR_TO_CREATE
            sleep 1s
            mkdir $DIR_TO_CREATE
        done
        ;;
esac
