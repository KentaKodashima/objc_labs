# Lab 13 - Pig Latin

## Learning Objectives
- Understand categories
- Learn more about NSString and NSArray

## Introduction
[Pig Latin](https://en.wikipedia.org/wiki/Pig_Latin) is a language game that is used by children and a few strange adults to speak in code.

Here's how it works: take any word in the English language and move the first [consonant](https://en.wikipedia.org/wiki/Consonant) (or group of consonants) if there are to the end of the word, then add and an ‘ay' to the end. So if we took ‘Kale Chips' it would become ‘Alekay Ipschay'.

## Instructions
You need to implement a category on NSString with one method: `-(NSString *)stringByPigLatinization`. 

This method will return the pig latin version of the string is called on, in the sense that all words will be turned into their pig latin version and there will be a space between each of them (don't worry about keeping the original spacing and punctuation right now).

**Things to keep in mind:**
- You'll need to separate the string into words. This is often called [tokenization](https://en.wikipedia.org/wiki/Tokenization) in language processing.
- Check out the class `NSCharacterSet` to see how to define an object that can tell if a character is one of a particular group of characters, and methods on `NSString` that deal with `NSCharacterSet` objects.
- Read this: [http://nshipster.com/nsrange/](http://nshipster.com/nsrange/)