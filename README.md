# PROJECT: Python vs R
<p align="center">
  <img src="https://www.python.org/static/community_logos/python-logo-master-v3-TM.png" width=180> 
</p>
<p align="center">
  <img src="https://glasstypewriter.files.wordpress.com/2015/11/versus-vs.png" height=35>
</p>
<p align="center">
  <img src="https://i.ibb.co/mCbV92Y/c3b7ed5d007115f23b737150df873247.png" width=80>
</p>

## INTRODUCTION

This project aims to compare the leading languages for data science and data analytics, in order to help new scientists, analysts, and students make the decision to invest in either language. The project comprises secondary research and empirical methods; besides exploring the industry landscape surrounding the two languages, the project seeks to examine both languages via complete examples of common tasks within the Data Analytics process. The following stages are in focus: 
- Extraction: web scraping
- Data preparation: cleaning and wrangling 
- Model development: prototyping with naive bayes, clustering, and random forest models.  

Each task will be conducted in both R and Python. At the end of the project, a presentation will be produced to compare relevant snippets and outputs line-by-line, with highlight on differences in syntax and paradigm. 

## WHY THIS PROJECT IS DIFFERENT FROM OTHER COMPARISONS

**As the projects aims to support new learners, the team assumes the "student persona" in writing and evaluating code samples in Python and R.** This means we avoid the topic of performance and paradigms to focus on *learning curve* and *intuitiveness*.   

Each example will be "standalone". This means that any future reader will gain an adequate understanding of the datasets used and the code needed to replicate the task/activity in full. The project team in the Information Systems Integration class (MIS4596) could not demonstrate our examples in detailed, but we will include scorecards and notes to summarize our findings. 

## PRELIMINARY COMPARISON

This visualization was made in Tableau Desktop. [Here](https://public.tableau.com/views/PythonandR-Kaggle-Dontdie/Infograph?:embed=y&:display_count=yes) is link to the visualization.

<p align="left" style="border: 1px">
  <img src="https://i.ibb.co/F7mr02K/Screenshot-27.png" alt="Infograph-1-cr" border=1 width=450>
</p>

I used the Kaggle survey as a means to control for the broader use cases of Python, a popular general-purpose language, as the survey concerns only data science and machine learning professionals. 

Between Python and R:
- Nearly a half of professionals uses both languages in their day-to-day work. 
- Python enjoys a greater percentage in terms of exclusive users (those who primarily uses either only Python or R).
- Python users are most concentrated in computer science/technology fields (43% of Python users). 
At least 19% of Python users are software engineers.  
- In comparision to Python, R users are more evenly distributed across disciplines and fields. 
It also sees a greater concentration of Data Scientists (30%) and Data Analysts (16%).
- R generally sees much fewer commits and contributions on Github repos than Python. This may explained by the difference in size between Python and R communities.  `ggplot2` is noteworthy due to having as large a presence as a major Python package on Stackoverflow

## EMPIRICAL COMPARISON
I was responsible for most of the comparative samples for this project except the Webscraping module and a section within Data Wrangling. 

Below are my observations on the difference between the two languages, based on work on my modules:
- Exploring features/fields in R is more intuitive thanks to the `str()` function in base R. Python has pandas's `info()`, but it provides less information. 
- readr in R transform columns from csv files into strict categories, creating greater ease for new users later in the process. Python, with pandas, will code the data type of non-numeric variables as object, obfuscating columns with mixed data and errors. 
- Python runs statistical and machine learning models much faster than R does. For instance, RandomForest runs for 6 times longer in R.
- Python's Object-oriented structured allows intuitive method chaining and greater readability. 
- R packages for statistical models* provide greater model transparency by providing built-in methods for explanation and exploring features importance. Getting the same information in Python, even with the package eli5, requires more skills from beginners
