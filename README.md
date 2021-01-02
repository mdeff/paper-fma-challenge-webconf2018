# Learning to Recognize Musical Genre from Audio, Challenge Overview

[Michaël Defferrard](https://deff.ch),
[Sharada P. Mohanty](https://spmohanty.com),
[Sean F. Carroll](https://www.linkedin.com/in/sfcarroll),
[Marcel Salathé](https://people.epfl.ch/marcel.salathe) \
The Web Conference, 2018

> We here summarize our experience running a challenge with open data for
> musical genre recognition. Those notes motivate the task and the challenge
> design, show some statistics about the submissions, and present the results.

```
@inproceedings{fma_challenge,
  title = {Learning to Recognize Musical Genre from Audio},
  subtitle = {Challenge Overview},
  author = {Defferrard, Micha\"el and Mohanty, Sharada P. and Carroll, Sean F. and Salath\'e, Marcel},
  booktitle = {The 2018 Web Conference Companion},
  year = {2018},
  publisher = {ACM Press},
  isbn = {9781450356404},
  doi = {10.1145/3184558.3192310},
  archiveprefix = {arXiv},
  eprint = {1803.05337},
  url = {https://arxiv.org/abs/1803.05337},
}
```

## Resources

PDF available at [arXiv] and [TheWebConf].

Related: [slides], [data], [code], [crowdAI challenge], [TheWebConf track].

[arXiv]: https://arxiv.org/abs/1803.05337
[TheWebConf]: https://doi.org/10.1145/3184558.3192310
[slides]: https://doi.org/10.5281/zenodo.1243501
[data]: https://github.com/mdeff/fma
[code]: https://github.com/crowdAI/crowdai-musical-genre-recognition-starter-kit
[crowdAI challenge]: https://www.crowdai.org/challenges/www-2018-challenge-learning-to-recognize-musical-genre
[TheWebConf track]: https://www2018.thewebconf.org/program/challenges-track

## Compilation

Compile the latex source into a PDF with `make`.
Run `make clean` to remove temporary files and `make arxiv.zip` to prepare an archive to be uploaded on arXiv.

## Figures

All the figures, along with the code and data to reproduce them, are in the [`analysis`](analysis/) folder.
While the PDFs are stored, they can be regenerated with `make`.
