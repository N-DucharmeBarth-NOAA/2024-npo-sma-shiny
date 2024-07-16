# 2024-npo-sma-shiny

Model output and code needed to produce a Shiny dashboard for the 2024 [ISC](https://isc.fra.go.jp/index.html) stock assessment of North Pacific Ocean shortfin mako shark. The full assessment report can be found [here](https://meetings.wcpfc.int/node/22828), and is a product of the ISC Shark Working Group ([SHARKWG](https://isc.fra.go.jp/working_groups/shark.html)).

### Running the models locally

Users should [clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) this repository on their local machine.

#### Using base R

Users should open up an R terminal ([version 4.4.0](https://cloud.r-project.org/); with RTools 4.4 already installed) and change the working directory to the directory that they cloned the repository into:
```
setwd("path/to/2024-npo-sma-shiny/")
```
Next they should source the [`.Rprofile`](https://github.com/N-DucharmeBarth-NOAA/2024-npo-sma-shiny/blob/main/.Rprofile):
```
source(".Rprofile")
```
This should prompt the `renv` package to bootstrap itself. [renv](https://rstudio.github.io/renv/index.html) is used for R package management to ensure a consistent work environment is set-up. Follow the in terminal prompts to 
install all packages. This should take a few minutes as there are a number of packages to load. If `renv` does not bootstrap automatically then run:
```
renv::restore()
```

Once all packages have been installed the user can run the following to launch the Shiny application:
```
setwd("./shiny")
source("app.R")
```

#### Using Rstudio

Users should use [Rstudio](https://posit.co/download/rstudio-desktop/) with R version 4.4.0 and RTools 4.4 installed, and open the `2024-npo-sma-shiny` [project](https://bookdown.org/ndphillips/YaRrr/projects-in-rstudio.html). The `renv` package to bootstrap itself as described above and once all packages have been installed the user can launch the app using:
```
setwd("./shiny")
source("app.R")
```
If `renv` does not bootstrap automatically then run:
```
renv::restore()
```

#### Using Visual Studio Code

Users should use [Visual Studio Code](https://code.visualstudio.com/download) with R version 4.4.0 and RTools 4.4 installed (set-up instructions [here](https://github.com/REditorSupport/vscode-R)). In order to configure Visual Studio Code to work with `renv` the user should follow the configuration steps located [here](https://github.com/REditorSupport/vscode-R/wiki/Working-with-renv-enabled-projects). Once Visual Studio Code has been configured properly, open the `2024-npo-sma-shiny` folder using Visual Studio Code. [Opening an R terminal](https://code.visualstudio.com/docs/languages/r#_running-r-code) should prompt the `renv` package to bootstrap itself as described above. Once all packages have been installed the user can launch the app using:
```
setwd("./shiny")
source("app.R")
```
If `renv` does not bootstrap automatically then run:
```
renv::restore()
```
### Running the models remotely

Alternatively, models can be run in the cloud using [GitHub Codespaces](https://github.com/features/codespaces). A virtual Linux machine has already been [configured](https://github.com/N-DucharmeBarth-NOAA/2024-npo-sma-shiny/blob/main/.devcontainer/devcontainer.json) so users can simply [open a Codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/creating-a-codespace-for-a-repository#creating-a-codespace-for-a-repository) using default options. Initial creation of the Codespace can take 15-20 minutes. Once the Codespace is created, open an R terminal. This should prompt the `renv` package to bootstrap itself as described above. Once all packages have been installed the user can launch the app using:
```
setwd("./shiny")
source("app.R")
```
If `renv` does not bootstrap automatically then run:
```
renv::restore()
```
### License

The code contained in this repository is licensed under the GNU GENERAL PUBLIC LICENSE version 3 ([GPLv3](https://www.gnu.org/licenses/gpl-3.0.html)).

### Disclaimer

This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.
