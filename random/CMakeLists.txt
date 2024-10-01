cmake_minimum_required(VERSION 3.28)

project(main)

add_executable(main main.c random.c random.h)

target_link_libraries(main PRIVATE m)
