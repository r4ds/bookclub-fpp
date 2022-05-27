# R4DS Forecasting: Principles and Practice Book Club

Welcome to the R4DS Forecasting: Principles and Practice Book Club!

We are working together to read [_Forecasting: Principles and Practice_](https://otexts.com/fpp3/) by Rob J Hyndman and George Athanasopoulos (OTexts: Melbourne, Australia, copyright 2021, 978-0987507136).
Join the [#book_club-fpp](https://rfordatascience.slack.com/archives/C03CXSNDVJM) channel on the [R4DS Slack](https://r4ds.io/join) to participate.
As we read, we are producing [notes about the book](https://r4ds.io/fpp).

## Meeting Schedule

If you would like to present, please see the sign-up sheet for your cohort (linked below, and pinned in the [#book_club-fpp](https://rfordatascience.slack.com/archives/C03CXSNDVJM) channel on Slack)!

- [Cohort 1](https://docs.google.com/spreadsheets/d/1zJsaeQxcYvXXXbY-rfLm0KBT4pTB-kQC_koy6tLxe5o/edit?usp=sharing) (started STARTDATE): [Sundays, 13:00 CST/CDT](https://www.timeanddate.com/worldclock/converter.html?iso=20220515T180000&p1=24&p2=16) | [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGiw2WcRTHAhBBwzlFB8YoC3)


<hr>


## How to Present

This repository is structured as a [{bookdown}](https://CRAN.R-project.org/package=bookdown) site.
To present, follow these instructions:

1. [Setup Github Locally](https://www.youtube.com/watch?v=hNUNPkoledI)
2. Fork this repository.
3. Create a New Project in RStudio using your fork.
4. Install dependencies for this book with `devtools::install_dev_deps()` (technically optional but it's nice to be able to rebuild the full book).
5. Create a New Branch in your fork for your work.
6. Edit the appropriate chapter file, if necessary. Use `##` to indicate new slides (new sections).
7. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
8. Commit your changes.
9. Push your changes to your branch.
10. Open a Pull Request (PR) to let us know that your slides are ready.

When your PR is checked into the main branch, the bookdown site will rebuild, adding your slides to [this site](https://r4ds.io/fpp).
