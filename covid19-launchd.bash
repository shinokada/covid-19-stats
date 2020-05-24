#!/usr/bin/env bash
# run covid-19 files 
# git add, comit and push


papermill covid-19-data.ipynb ./latest/covid-19-data.ipynb
papermill multiplot.ipynb ./latest/multiplot.ipynb 
papermill covid-19-matplotlib.ipynb ./latest/covid-19-matplotlib.ipynb 
papermill covid-19-matplotlib-logarithmic.ipynb ./latest/covid-19-matplotlib-logarithmic.ipynb
papermill covid-19-plotly.ipynb ./latest/covid-19-plotly.ipynb 
papermill covid-19-plotly-logarithmic.ipynb ./latest/covid-19-plotly-logarithmic.ipynb
papermill uk.ipynb ./latest/uk.ipynb 
papermill data_scraping.ipynb ./latest/data_scraping.ipynb 
papermill uk-japan.ipynb ./latest/uk-japan.ipynb 
papermill Dropdown-interactive.ipynb ./latest/Dropdown-interactive.ipynb

now=$(date)
git add . 
git commit -m "update at $now" 
git push
terminal-notifier -title Covid19 -subtitle "Daily Updated" -message "Completed" -open "https://nbviewer.jupyter.org/github/shinokada/covid-19-stats/tree/master/latest/"

echo "launchd update completed at $now"