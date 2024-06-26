#!/usr/bin/env nu
#
# VERSION:
#	7.0
#
# DESCRIPTION:
#	This a simple script that loads an ASCII art centred in your terminal.
#
#	By default, it will look for art that can be loaded in the terminal size,
#	which means art that do not expand further than the width and height
#	of the current terminal.
#	So I do recommend you to have multiple arts.
#
#	If you want nincat to print faster, then just use a POSIX-compliant shell,
#	I do recommend dash (which as 4x faster than bash).
#
# NOTES:
#	All ASCII arts should have in the first line the author and its lin.
#
# MAINTAINER(S):
#	BeyondMagic : 2021-2024 : <koetemagie@gmail.com>
#
# GPL3 🄯  2024 : https://github.com/ninecath/nincat/

const default = {
	database : './data.json'
	assets : './assets/**/*'
}

# Setup the files as a single data.
#
# TODO:
#	Add handling of ignore text file with each line as path (relative or absolute).
#	--ignore : string = './ignore.txt '
#
# This pre-loading makes so that this program can load data faster.
export def setup [
	database : string = $default.database # Database of the arts.
	--assets : string = $default.assets # Where to look for the ASCII arts.
] : nothing -> nothing {
	ls ($assets | into glob)
	| where type != dir
	| get name
	| par-each {|path|
		let data = open $path
			| lines

		let tags = $path
			| split row --regex '/| '
			| skip 1

		let author = $data
			| first
			| str substring 2..

		# TODO: should replace ASCII codes with appropriate length character(s).
		# Idea for `\eXXC` is probably for columns.
		let width = $data
			| skip 1
			| par-each {|line|
				$line
				| str length
			}
			| sort
			| last

		let height = $data
			| skip 1
			| length

		{
			path: ($path | path expand)
			tags: $tags
			author: $author
			width: $width
			height: $height
		}
	}
	| save --force $database
}

# Return an random art.
#
# TODO:
#	- Do not print arts bigger than the terminal.
#	--limit = false
#
#	Alignment of the arg in the terminal.
#	--align@[left center right]
export def random [
	database : string = $default.database # Database of the arts.
	--author = false # Show author or not.
] : nothing -> string {
	let data = open $database

	# Get random item from data.
	let item = $data
		| get (
			random int 0..(
				($data | length) - 1
			)
		)

	let art = open --raw $item.path

	(if $author {
		$art
	} else {
		$art
		| str replace --regex `.*\n` ``
		# ^ Remove the first line (authority).
	}) + (ansi reset)
	| str substring ..-2
	# ^ Remove the last newline.
}
