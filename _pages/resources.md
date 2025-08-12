---
title:  "Resources"
date:   2025-8-12 16:00:00 -0500
permalink: /resources/
---

![Settlers Resources](/assets/images/catan_resources.png "Settlers Resources")

## Economics at the University of Evansville

- [The Schroeder School of Business](https://www.evansville.edu/majors/business/)
- [Majoring in Economics](https://www.evansville.edu/majors/business/economics.cfm)

## Economic History

- [EHA Website](https://eh.net/eha/)
- [EH.net](https://eh.net)
- [Explorations in Economic History](https://www.sciencedirect.com/journal/explorations-in-economic-history)
- [Journal of Economic History](https://www.cambridge.org/core/journals/journal-of-economic-history)
- [Economic History Podcast](https://podcasts.apple.com/us/podcast/the-economic-history-podcast/id1513552663)
- [GrowthChat Podcast](https://podcasts.apple.com/us/podcast/growthchat-by-marco-lecci-and-sascha-o-becker/id1547360381)

## Historical Political Economy

- [Broadstreet Blog](https://broadstreet.blog)
- [Virtual Workshop in Historical Political Economy](https://historicalpe.org)

## Econometrics and Causal Inference

These resources are helpful for both learning basic metrics & causal inference as well as tracking packages to implement these techniques in different data analysis software, primarily R, Stata, and Python

- ["The Effect" by Nick Huntington-Klein](https://theeffectbook.net)
- ["Causal Inference: The Mixtape" by Scott Cunningham](https://mixtape.scunning.com)
- [The Library of Statistical Techniques (LOST)](https://lost-stats.github.io)
- [Difference-in-Difference (DiD) Repository from Asjad Naqvi](https://asjadnaqvi.github.io/DiD/)

## Getting Started with R

Start by downloading the R software environment
- [Download R](https://www.r-project.org)

Next download one of two IDEs, both developed by Posit
- [Positron](https://positron.posit.co)
  - A general IDE that supports R, but also Python and Julia
  - Just came out of beta, but is mostly stable and has modern features absent from RStudio
  - If you have experience in VSCode, I recommend Positron
- [RStudio](https://posit.co/downloads/)
  - The classic IDE for R, and still the most popular
  - Straightforward, easier to navigate, and very stable
  - If you have no experience with IDEs, I recommend RStudio

After installing R and an IDE, you can start learning R. Here are some resources to get you started:
- [Starter links from posit](https://support.posit.co/hc/en-us/articles/201141096-Getting-Started-with-R)
  - Recommended resources for learning R
- [Package Cheatsheets from posit](https://posit.co/resources/cheatsheets/?type=posit-cheatsheets/)
  - Cheatsheets for a variety of offerings from Posit

## Working with LLMs in R

Working with Large Language Models in R requires using an API from the LLM provider. This typically requires creating an account *separate* from your chat account, generating the API key, and adding it to your R environment. [See here for more information.](https://tilburg.ai/2024/03/tutorial-openai-api-in-r/)

[See this blog post for a collection of LLM-related packages.](https://blog.stephenturner.us/p/r-production-ai) Here are some specific features and packages I've found useful:

- [Copilot code completion in RStudio](https://docs.posit.co/ide/user/ide/guide/tools/copilot.html)
  - Setting this up is much easier in [Positron](https://positron.posit.co)
- [ellmer](https://ellmer.tidyverse.org)
  - Many packages below built on ellmer
  - Interact directly with a variety of LLMs
  - Chat, submit batch queries, parallel queries, queries for structured data responses, and more!
- [chattr](https://mlverse.github.io/chattr/)
  - Chat with an LLM within your IDE, similar to copilot chat in VSCode
- [gander](https://simonpcouch.github.io/gander/)
  - Simple chat that sees your environment and existing code, and writes code according to your instructions
  - Somewhat similar to copilot chat in VSCode, but has more context

## Data Science in R

- [R for Data Science by Wickham & Grolemund](https://r4ds.had.co.nz/index.html)

## Web Crawling & Scraping in R

- [Rvest R Package (Part of Tidyverse)](https://rvest.tidyverse.org)
- [Web Crawling & Scraping Tutorial by Alex Cardazzi](https://alexcardazzi.github.io/using-r/ew_wvu_2022/web_stuff.html)

## GIS

- ["Geocomputation with R" by Lovelace, Nowosad, & Muenchow](https://geocompr.robinlovelace.net/index.html)
- [Atlas of Historical County Boundaries (US)](https://digital.newberry.org/ahcb/index.html)
  - Shapefiles for historical county (1629-2000) and state/territory (1783-2000) boundaries. Tracks all boundary changes over time.
- [IPUMS NHGIS (US)](https://www.nhgis.org)
  - Shapefiles for historical boundaries in census years from 1790-Present. Does not track all changes, only shows boundaries as they existed in census years.
- [Eurostat (From the EU)](https://ec.europa.eu/eurostat/web/gisco)
  - Shapefiles for modern Europe

## Text as Data

- ["Text Mining with R" by Silge & Robinson](https://www.tidytextmining.com/index.html)

<!-- ## Fun and Useful

- [Elicit: The AI Research Assistant](https://elicit.org/) -->

## Fun and Useless

- [Phish.net](https://phish.net)
  - Full of fan-sourced song, venue, and performance statistics for the jam band Phish