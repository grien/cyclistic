{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "7188b0fe",
   "metadata": {
    "papermill": {
     "duration": 0.017375,
     "end_time": "2022-03-20T17:44:46.510694",
     "exception": false,
     "start_time": "2022-03-20T17:44:46.493319",
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
    "     height=\"700\" /></p>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5ff6c46b",
   "metadata": {
    "papermill": {
     "duration": 0.015906,
     "end_time": "2022-03-20T17:44:46.544061",
     "exception": false,
     "start_time": "2022-03-20T17:44:46.528155",
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
   "id": "894d388c",
   "metadata": {
    "papermill": {
     "duration": 0.01589,
     "end_time": "2022-03-20T17:44:46.575860",
     "exception": false,
     "start_time": "2022-03-20T17:44:46.559970",
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
   "id": "5c34b9de",
   "metadata": {
    "papermill": {
     "duration": 0.015855,
     "end_time": "2022-03-20T17:44:46.607629",
     "exception": false,
     "start_time": "2022-03-20T17:44:46.591774",
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
   "id": "619cdf37",
   "metadata": {
    "papermill": {
     "duration": 0.015749,
     "end_time": "2022-03-20T17:44:46.639186",
     "exception": false,
     "start_time": "2022-03-20T17:44:46.623437",
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
   "id": "1d7d6849",
   "metadata": {
    "papermill": {
     "duration": 0.014674,
     "end_time": "2022-03-20T17:44:46.669110",
     "exception": false,
     "start_time": "2022-03-20T17:44:46.654436",
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
   "id": "e61a2a3b",
   "metadata": {
    "papermill": {
     "duration": 0.014851,
     "end_time": "2022-03-20T17:44:46.698641",
     "exception": false,
     "start_time": "2022-03-20T17:44:46.683790",
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
   "duration": 3.662664,
   "end_time": "2022-03-20T17:44:46.826392",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-03-20T17:44:43.163728",
   "version": "2.3.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
