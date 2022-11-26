#!/bin/bash
mkdir dump
mv *.txt dump

aws s3 sync dump/ s3://acctfile/dump-"$(date +%d-%m)"/
