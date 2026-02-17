cmake_minimum_required(VERSION 3.10.2)
project(uptime)

add_library(
        uptime
        SHARED
        uptime.c
)

find_library(
        log-lib
        log
)

target_link_libraries(
        uptime
        ${log-lib}
)
