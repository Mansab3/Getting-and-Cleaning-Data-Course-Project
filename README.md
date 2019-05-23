{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;\f1\fnil\fcharset0 Consolas;\f2\fswiss\fcharset0 ArialMT;
}
{\colortbl;\red255\green255\blue255;\red27\green31\blue34;\red255\green255\blue255;\red21\green23\blue26;
\red27\green31\blue34;\red42\green44\blue46;\red249\green249\blue249;\red33\green91\blue198;\red10\green77\blue204;
}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18039;\cssrgb\c100000\c100000\c100000;\cssrgb\c10588\c12157\c13725\c4706;
\cssrgb\c14118\c16078\c18039;\cssrgb\c21569\c22745\c23529;\cssrgb\c98039\c98039\c98039;\cssrgb\c16078\c44706\c81961;\cssrgb\c1176\c40000\c83922;
}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid101\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid2}
{\list\listtemplateid3\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid201\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid3}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}{\listoverride\listid3\listoverridecount0\ls3}}
\margl1440\margr1440\vieww17360\viewh9540\viewkind0
\deftab720
\pard\pardeftab720\sl600\sa320\partightenfactor0

\f0\b\fs48 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Getting and Cleaning Data Course Project\

\fs36 Purpose\
\pard\pardeftab720\sl360\sa320\partightenfactor0

\b0\fs32 \cf2 The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl360\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 a tidy data set as described below;\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 a link to a Github repository with your script for performing the analysis; and\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called\'a0
\f1\fs27\fsmilli13600 \cb4 CodeBook.md
\f0\fs32 \cb3 .\cb1 \
\pard\pardeftab720\sl360\sa320\partightenfactor0
\cf2 \cb3 You should also include a\'a0
\f1\fs27\fsmilli13600 \cb4 README.md
\f0\fs32 \cb3 \'a0in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.\
\pard\pardeftab720\sl600\sa320\partightenfactor0

\b\fs36 \cf5 \cb3 \outl0\strokewidth0 Data for the project 
\f2\b0\fs28 \cf6 \cb7 \outl0\strokewidth0 \strokec6 \
\pard\pardeftab720\sl400\sa400\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt \cf8 \ul \ulc8 \strokec8 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}
\f0\b\fs36 \cf9 \cb1 \strokec9 \
\pard\pardeftab720\sl360\partightenfactor0
\cf9 \
\pard\pardeftab720\sl440\sa320\partightenfactor0
\cf2 \cb3 \strokec2 Objectives\
\pard\pardeftab720\sl320\sa320\partightenfactor0

\f1\b0\fs27\fsmilli13600 \cf2 \cb4 run_analysis.R
\f0\fs32 \cb3 \'a0performs the following:\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl360\partightenfactor0
\ls2\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Merges the training and the test sets to create one data set.\cb1 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Extracts only the measurements on the mean and standard deviation for each measurement.\cb1 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Uses descriptive activity names to name the activities in the data set\cb1 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	4.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Appropriately labels the data set with descriptive activity names.\cb1 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	5.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Creates a second, independent tidy data set with the average and standard deviation  of each variable for each \cf5 \cb3 \outl0\strokewidth0 SubjectID and Activity.
\b\fs36 \cf9 \cb1 \outl0\strokewidth0 \strokec9 \
\pard\pardeftab720\sl440\sa320\partightenfactor0
\cf2 \cb3 \strokec2 run_analysis.R\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl360\partightenfactor0
\ls3\ilvl0
\b0\fs32 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Download the\'a0
\b UCI HAR Dataset
\b0 \'a0data set into the UCI HAR Dataset folder.\cb1 \
\ls3\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Read test, train , features and activity files through read.table().\cb1 \
\ls3\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Merge test and train activity data using rbind()\
\ls3\ilvl0\cb1 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	4.	}Merge test and train feature data using rbind()\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\ls3\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	5.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Find indices for features that has mean() or standard deviation as columns name.\
\ls3\ilvl0\cb1 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	6.	}Filter only features that has \cf5 \cb3 \expnd0\expndtw0\kerning0
mean() or standard deviation column\
\ls3\ilvl0\cf2 \cb1 \kerning1\expnd0\expndtw0 {\listtext	7.	}Replace activity numbers with activity name\
{\listtext	8.	}Create factor for feature name\
{\listtext	9.	}Update column name with feature names using factor indices\
{\listtext	10.	}Name columns as subject and activity\
{\listtext	11.	}Create new dataset by merging subject, activity and features using bin.\
{\listtext	12.	}Load merged dataset into CleanData as data.table\
{\listtext	13.	}Average mean and standard deviation for each variable of subject and activity into data frame tidydataF\
{\listtext	14.	}Write data frame tidydataF into TidyData.txt file.\
{\listtext	15.	}Display \cf5 tidydataF three columns to check results.}