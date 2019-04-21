#!/bin/bash
audio=$(pamixer --get-volume)
echo -e $audio
