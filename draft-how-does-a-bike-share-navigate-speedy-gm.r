{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "3eb9cf88",
   "metadata": {
    "papermill": {
     "duration": 0.018828,
     "end_time": "2022-03-20T18:01:04.717715",
     "exception": false,
     "start_time": "2022-03-20T18:01:04.698887",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Case study: How Does a Bike-Share Navigate Speedy Success?\n",
    "\n",
    "# Introduction\n",
    "\n",
    "This exploratory analysis case study is towards Capstone project requirement for Google Data Analytics Professional Certificate. The case study involves a bikeshare company's data of its customer's trip details over a 12 month period (April 2020 - March 2021). The data has been made available by Motivate International Inc. under this license.\n",
    "\n",
    "<p style=\"text-align:center;\">The analysis will follow the 6 phases of the Data Analysis process: Ask, Prepare, Process, Analyze, and Act (APPAA).</p>\n",
    "\n",
    "<p style=\"text-align:center;\"><img src=\"https://miro.medium.com/max/1400/1*Z7x7l5YL4WbHkxQckLSXlA.png\" \n",
    "     width=\"800\" \n",
    "     height=\"700\" /></p>\n",
    "     "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e0647f67",
   "metadata": {
    "papermill": {
     "duration": 0.017409,
     "end_time": "2022-03-20T18:01:04.752369",
     "exception": false,
     "start_time": "2022-03-20T18:01:04.734960",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Ask\n",
    "\n",
    "The key tasks of the ask process are to: Identify the business task and consider the stakeholders.\n",
    "\n",
    "**Key business task**\n",
    "\n",
    "> The key business task of this case study is to discover how the annual members and casual riders use Cyclistic bikes differently. The marketing director, Lilly Moreno, believes that maximizing the number of annual members will be key to future growth; therefore, the goal is to present an analysis that will help design strategies to convert casual riders into annual members.\n",
    "\n",
    "**Stakeholders**\n",
    "\n",
    "* The key stakeholders include:\n",
    "\n",
    "* The Cyclistic executive team\n",
    "\n",
    "* Lilly Moreno (Director of Marketing)\n",
    "\n",
    "* The analytics team\n",
    "\n",
    "* The riders (casual and member)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "447363f6",
   "metadata": {
    "papermill": {
     "duration": 0.017386,
     "end_time": "2022-03-20T18:01:04.787205",
     "exception": false,
     "start_time": "2022-03-20T18:01:04.769819",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Prepare\n",
    "\n",
    "**Download data and store it appropriately**\n",
    "\n",
    "For this analysis, the previous 12 months of Cyclistic trip data has been downloaded from the link provided in the case study1 document. As stated in the case study document, the data were made available by Motivate International Inc. [link] (https://divvy-tripdata.s3.amazonaws.com/index.html). The local copies have been saved in a folder on my desktop and on kaggle.\n",
    "\n",
    "**Identify how it’s organized**\n",
    "\n",
    "* All the downloaded trip data are comma-separated values (csv) with 13 columns each. The columns are ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, and member_casual.\n",
    "\n",
    "* The rideable_type column in the year2020_11 data only contains two types of bike: the docked and electric bike.\n",
    "\n",
    "**Sort and filter the data**\n",
    "\n",
    "All the data were imported into a separate excel sheet, sorted by started_at with the oldest date in ascending order. Each column was filtered and checked for duplicate and any other inconsistency. In the ride_id of each trip data, there are values (id’s) that were not in the same format as others, i.e., they consist of only long numbers instead of a combination of letters and numbers. These id’s were filtered out of the data, these includes 8 from 2020_11, 9 from 2020_12, 9 from 2021_1, 7 from 2021_2, 8 from 2021_3, 9 from 2021_4, 3 from 2021_5, 6 from 2021_6, 10 from 2021_7, 5 from 2021_8, and 7 each from 2021_9/2021_10 respectively.\n",
    "\n",
    "**Determine the credibility of the data**\n",
    "\n",
    "The data source used for this case study was provided by Google, therefore the assumption is that the data is credible."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "41176882",
   "metadata": {
    "papermill": {
     "duration": 0.017163,
     "end_time": "2022-03-20T18:01:04.821862",
     "exception": false,
     "start_time": "2022-03-20T18:01:04.804699",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Process\n",
    "\n",
    "After sorting and filtering all the data, two columns: ride_length and day_of_week, were created. \n",
    "\n",
    "**Check the data for errors**\n",
    "\n",
    "* There were hundreds of negative ride length after calculating the ride_length. It was assumed that some started_at values were mistakenly inputted into the ended_at column and vice-versa. These errors were fixed by copying the date values and pasting them into their appropriate column.\n",
    "\n",
    "* There was also notice of some inconsistent data types. In the columns “start_station_id” and “end_station_id,” some values in the year2020_12 and all the year2021 trip data consist of both letters and numbers. The data in these columns were converted to text (string values) before importing into R.\n",
    "\n",
    "**Choose your tools**\n",
    "\n",
    "R is an efficient statistical tool and easy to create detailed data visualization using ggplot2\n",
    "\n",
    "**Transform the data so you can work with it effectively.**\n",
    "\n",
    "[TEXT]\n",
    "\n",
    "**Document the cleaning process.**\n",
    "\n",
    "[TEXT]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2a559cbe",
   "metadata": {
    "papermill": {
     "duration": 0.015926,
     "end_time": "2022-03-20T18:01:04.854976",
     "exception": false,
     "start_time": "2022-03-20T18:01:04.839050",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Analyze \n",
    "\n",
    "**Aggregate your data so it’s useful and accessible.**\n",
    "\n",
    "[TEXT]\n",
    "\n",
    "**Organize and format your data.**\n",
    "\n",
    "[TEXT]\n",
    "\n",
    "**Perform calculations.**\n",
    "\n",
    "[TEXT]\n",
    "\n",
    "**Identify trends and relationships.**\n",
    "\n",
    "[TEXT]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "673e5e84",
   "metadata": {
    "papermill": {
     "duration": 0.016202,
     "end_time": "2022-03-20T18:01:04.887497",
     "exception": false,
     "start_time": "2022-03-20T18:01:04.871295",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Share\n",
    "\n",
    "**Determine the best way to share your findings.**\n",
    "\n",
    "[TEXT]\n",
    "\n",
    "**Create effective data visualizations.**\n",
    "\n",
    "[TEXT]\n",
    "\n",
    "**Present your findings.**\n",
    "\n",
    "[TEXT]\n",
    "\n",
    "**Ensure your work is accessible.**\n",
    "\n",
    "[TEXT]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a75f4bdf",
   "metadata": {
    "papermill": {
     "duration": 0.015542,
     "end_time": "2022-03-20T18:01:04.918751",
     "exception": false,
     "start_time": "2022-03-20T18:01:04.903209",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Act\n",
    "\n",
    "**Your top three recommendations based on your analysis**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9199c6a7",
   "metadata": {
    "papermill": {
     "duration": 0.016187,
     "end_time": "2022-03-20T18:01:04.951175",
     "exception": false,
     "start_time": "2022-03-20T18:01:04.934988",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<div class='tableauPlaceholder' id='viz1647798861778' style=\"width:1000px; margin:0 auto;\"; ><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ju&#47;JusttheData-WorldHapiness_16399311882360&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='JusttheData-WorldHapiness_16399311882360&#47;Dashboard1' /><param name='tabs' value='yes' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ju&#47;JusttheData-WorldHapiness_16399311882360&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1647798861778');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.minWidth='1000px';vizElement.style.maxWidth='100%';vizElement.style.minHeight='850px';vizElement.style.maxHeight=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.minWidth='1000px';vizElement.style.maxWidth='100%';vizElement.style.minHeight='850px';vizElement.style.maxHeight=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.minHeight='1250px';vizElement.style.maxHeight=(divElement.offsetWidth*1.77)+'px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 3.462692,
   "end_time": "2022-03-20T18:01:05.077810",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-03-20T18:01:01.615118",
   "version": "2.3.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
