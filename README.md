## Wearable computing - R scipt

### Input data

The run_analysis.R script takes the input already downloaded and unzipped from this source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R working directory should be set to the directory containing the unzipped data. The directory structure inside the zip file can be maintained. In particular data is read from the existing /train and /test sub directories.

The specific files used are:

From the base data directory:
activity_labels.txt
features.txt

From the train directory:
subject_train.txt
X_train.txt
y_train.txt

From the test sub-directory:
subject_test.txt
X_test.txt
y_test.txt

### Running the script

1. The script uses the dplyr and stringr packages. Install these packages if necessary
2. Source the run_analysis.R script
3. Set the R working directory to be the lowest level of the unzipped data
4. In the console run the following command:
    run_analysis()

### Output

A data frame 'observations' will be created in the R global environment (for potential reuse). This data set:
- Combines the train and test data
- Selects only mean and standard deviation observations from the training and testing data
- Relabels the activities with descriptive names
- Labels key and observation variables with descriptive variable names (the meanings of each column are described in the code book)

A second data frame 'grouped_means' will be created in the R global environment which is the mean of the observations for each activity and subject

The grouped means will also be saved (as a table) in a file 'grouped_means.txt' in the working directory



