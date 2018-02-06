# MiiTube

This repository contains tools for the "MiiTube.dat" file that Miitopia uses in-game for character roles.
The files are downloaded with SpotPass, it is nothing more than a package of a couple hundred Miis. Before you can play with them, they need to be decrypted. [GodMode9](https://github.com/d0k3/GodMode9) on a 3DS can help you out with that.

## How Miis are picked

Usually on game startup it asks you questions about the Miis you see e.g. "Which Mii looks the bravest?" and rewards you with game tickets.

## Why?

Being someone who works on [RiiConnect24](https://rc24.xyz/), I think the idea of Miis being distributed over SpotPass is neat, and it's the closest thing imaginable to what the Check Mii Out Channel was like.

## What this repository contains

This repository contains a [Kaitai file structure](https://kaitai.io/) of the format, and a bash script that can be ran to download the MiiTube files regularly. We download the files every 8 hours with a crontab on the RiiConnect24 VPS.

## Why is MiiTube such a great name?

I agree it's a great name. Instead of "YouTube", it's all about me, so it's called "MiiTube"!
