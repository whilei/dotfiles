#!/bin/bash

# Run in current directory. 

# https://www.reddit.com/r/linux/comments/19q060/favorite_tiny_linux_scripts_convert_video_to_gif/

#Alright, so this should automatically convert a given video into a gif called optimized_output.gif
# See here for explanation: https://github.com/lelandbatey/configDebDev/blob/master/helpFiles.md#converting-videos-to-animated-gifs

ffmpeg -i $1 asdfout%04d.gif # Extracts each frame of the video as a single gif
convert -delay 4 asdfout*.gif anim.gif # Combines all the frames into one very nicely animated gif.
convert -layers Optimize anim.gif optimized_output.gif # Optimizes the gif using imagemagick

# vvvvv Cleans up the leftovers
rm asdfout*
rm anim.gif 
