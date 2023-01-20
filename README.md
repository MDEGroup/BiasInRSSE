# Popularity bias in Recommender Systems for Software Engineering

Recommender systems for software engineering (RSSEs) assist software engineers in dealing with a growing information overload when discerning alternative development solutions. 

While RSSEs are becoming more and more effective in suggesting handy recommendations, they tend to suffer from popularity bias, \ie they favor items that are relevant mainly because several developers are using them. While this rewards artifacts that  are likely more reliable and well-documented, it would also mean missing artifacts rarely used because they are very specific or more recent. 

This work studies popularity bias in Third-Party Library (TPL) RSSEs. First, we investigate whether state-of-the-art research in RSSEs has already tackled the issue of popularity bias. Then, we quantitatively assess \numSys existing TPL RSSEs, exploring their capability to deal with the recommendation of popular items. Finally, we propose a mechanism to defuse popularity bias in the recommendation list. The empirical study reveals that the issue of dealing with popularity in TPL RSSEs has not received adequate attention from the software engineering community. Among the surveyed work, only one starts investigating the issue, albeit getting a low prediction performance.

## Venues
We conducted a literature analysis on premier venues in Software Engineering, which are listed in following Table:

![Venues table](venue_table.png)

# Systems and datasets

We briefly introduce the systems considered in the evaluation, namely LibRec, CROSSRec, LibSeek, and GRec. Afterwards, we present the dataset exploited for the
experiments. The software and hardware configurations for the testing platform are finally specified.

## Considered recommender systems

| System                                    | Working mechanism                                                                                                                                                                                                                                                                       | Potential risks                                                                                                                                                                                                                        |
|----------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| LibRec                       | LibRec is built on top of a light collaborative-filtering technique and association mining, looking for libraries that are used by popular projects. | The system is exposed to popularity bias by its nature, retrieving only popular libraries thanks to association mining.                                     |
| CROSSRec          | CROSSRec employs a collaborative-filtering technique to mine TPLs from similar projects.| The system is prone to popularity bias as it recommends libraries coming from projects that are similar. |
| LibSeek  | LibSeek uses matrix factorization, attempting to neutralize the bias caused by the popularity of TPLs by means of an adaptive weighting mechanism.| Due to its internal design, the system is expected to mitigate the effect of popularity bias. 
| GRec  | Built on top of graph neural networks, \GR learns to recommend TPLs through app-library interactions.| Thanks to the underlying link prediction technique, \GR is supposed to recommend popular libraries. 



## Datasets 
We use datasets curated by
existing studies to evaluate the four TPL RSSEs. Overall, we
consider three datasets from Java open source software, two
(DS1 and DS2) related to generic software systems, and one
(DS3) specific to Android apps. In particular, DS1 was curated
to evaluate CrossRec, while DS3 (originally named MALib7)
has been involved in the experiments of both LibSeek and
GRec. Finally, we introduced DS2 as an extension of DS1
to study how the approaches perform by considering a larger
number of libraries. The datasets are summarized in the next table.

To give a first idea of how the dataset could cause popularity
bias, we counted the number of occurrences for each library
in a dataset, and sorted all the libraries in descending order of
this number. The frequency for the libraries of DS1, DS2, and
DS3 is shown in Fig. 1. As it can be seen, there is always a
long tail in all three datasets. For instance, in DS1 the most
popular library is junit:junit, being included in 969 over 1; 200
projects. Meanwhile, the majority of the TPLs are infrequent
i.e., we count 10; 212 among 13; 497 libraries appearing only
once in the whole dataset.
The lower part of Table III enumerates the experimental
configurations we considered, where the columns represent
datasets, and the rows correspond to systems. A cell is filled
with a tick (4) if the tool in the corresponding row is executed
on the dataset in the column, otherwise, it is filled with (7).
Only DS2 is used for experiments with all the four tools. In
this respect, the dataset is used to compare the performance
of the RSSEs.

![Venues table](datasets.png)

# Repository Structure

On a Linux system, open a terminal and execute the following command to
download all artifacts from a single GitHub repository:

``` 
$ git clone https://github.com/MSR23-BiasInRSSE/BiasInRSSE.git
```
    
This will create a new directory named , and we call it the root
directory in the scope of this document. For the sake of clarity, we do
not write the full path for the directory. In practice, an example of a
full path in Linux is /home/admin/Desktop/APIRecSys-AML. 


The root directory has the following structure:
```
├── LibRec
│   ├── to
│   ├── be
│   └── uploaded
├── CROSSRec
│   ├── to
│   ├── be
│   └── uploaded
│           
├── LibSeek
│   ├── relation_D2.csv
│   ├── relation_D3.csv
│   ├── result_D2_Prediction.csv
│   └── result_D3_Prediction.csv
└── GRec
    ├── reRecommendationN10_D2.csv
    ├── reRecommendationN10_D3.csv
    ├── reRecommendationN30_D2.csv
    ├── reRecommendationN30_D3.csv
    ├── test_D2.csv
    ├── test_D3.csv
    ├── train_D2.csv
    └── train_D3.csv


```

The root directory has the following structure:

-   The  [LibRec](./LibSeek/) directory contains the D2 and D3 datasets and results obtained by running LibSeek on them.
-   The  [GRec](./GRec/) directory contains the D2 and D3 datasets and results obtained by running GRec on them.
-   [MSR_BIASES_SLR.xlsx](.MSR_BIASES_SLR.xlsx) is an Excel file to report the paper collection used to perform the
    literature analysis. We investigate whether there is already any effort devoted to studying and dealing with threats to RSSE
    originating from malicious data. 


**NOTE**: This section introduces the data extraction process, for the
sake of reproducibility. However, we completely parsed the metadata
needed as input for the four recommender systems at your disposal. The
tasks described in this section require a long computation time as well
as knowledge about Rascal, and we strongly suggest using the metadata as
it is.
