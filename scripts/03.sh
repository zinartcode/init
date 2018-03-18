#!/bin/bash

cd $1
du -h * | sort -hr
