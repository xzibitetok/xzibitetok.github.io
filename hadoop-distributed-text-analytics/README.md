# 🐘 Hadoop Distributed Text Analytics

![Apache Hadoop](https://img.shields.io/badge/Apache%20Hadoop-Distributed%20Computing-66CCFF?logo=apachehadoop&logoColor=black)
![HDFS](https://img.shields.io/badge/HDFS-Distributed%20Storage-1f77b4)
![YARN](https://img.shields.io/badge/YARN-Resource%20Management-orange)
![MapReduce](https://img.shields.io/badge/MapReduce-Distributed%20Processing-red)
![Python](https://img.shields.io/badge/Python-3.x-3776AB?logo=python&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Linux-E95420?logo=ubuntu&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-Command%20Line-4EAA25?logo=gnu-bash&logoColor=white)

> An end-to-end Big Data engineering project built in Ubuntu using Bash, Apache Hadoop, HDFS, YARN, Hadoop Streaming, MapReduce and Python to organise book data and perform distributed text analytics.

---

## 📌 Project Overview

This project explores how an online bookstore can use Linux command-line tools and distributed computing to organise its digital book collection and extract useful information from large text files.

The work starts at the operating-system level with **Ubuntu and Bash**, where a structured PageTurner Books directory is created and managed entirely from the terminal. It then moves into a two-node Hadoop environment, where literary datasets are stored in **HDFS** and processed using **MapReduce** through Hadoop Streaming.

Two text-analytics workflows were implemented:

1. **Word Frequency Analysis** — analysing *A Christmas Carol* by Charles Dickens and identifying its ten most frequently occurring words.
2. **Sentence Count Analysis** — analysing *Moby Dick; Or, The Whale* by Herman Melville and calculating its total number of sentences.

The complete workflow is:

```text
Ubuntu / Bash
      ↓
Linux File & Directory Management
      ↓
Hadoop Master / Worker Cluster
      ↓
HDFS Distributed Storage
      ↓
Python Mapper / Reducer
      ↓
Hadoop Streaming
      ↓
MapReduce Processing
      ↓
Structured Output
      ↓
Text Analytics & Interpretation
```

---

## 🎯 Project Goals

- Use Bash to create and manage a structured bookstore directory.
- Work with files and directories directly from the Ubuntu terminal.
- Understand the main components of the Hadoop ecosystem.
- Configure and verify a Hadoop master/worker environment.
- Store book datasets in HDFS.
- Build Python mapper and reducer programs for Hadoop Streaming.
- Perform distributed word-frequency analysis.
- Rank the ten most frequent words in *A Christmas Carol*.
- Build and validate a sentence-counting MapReduce workflow.
- Calculate the total number of sentences in *Moby Dick; Or, The Whale*.
- Verify Hadoop outputs and retrieve them to the Ubuntu filesystem.
- Transform unstructured literary text into structured analytical results.

---

## 🧰 Technology Stack

| Technology | Purpose |
|---|---|
| **Ubuntu Linux** | Operating environment |
| **Bash** | Command-line file, directory and process management |
| **Apache Hadoop** | Distributed computing framework |
| **HDFS** | Distributed storage |
| **YARN** | Resource management and job execution |
| **MapReduce** | Distributed data-processing model |
| **Hadoop Streaming** | Running Python programs as MapReduce jobs |
| **Python 3** | Mapper and reducer implementation |
| **VirtualBox** | Virtualised Hadoop master/worker environment |
| **GNU/Linux utilities** | File inspection, sorting and output processing |

---

# 🐧 1. Ubuntu and Bash Foundation

## What is Bash?

Bash, or **Bourne Again Shell**, is a command-line shell and scripting environment commonly used on Unix and Linux systems such as Ubuntu.

Rather than relying on a graphical file manager, Bash provides direct control over the filesystem and system environment through typed commands. This makes operations precise, repeatable and easy to combine into workflows.

For this project, Bash was used as the starting point for the entire implementation.

### Bash vs GUI

A graphical user interface provides menus, icons and windows for interacting with files and applications.

Bash provides the same type of control through commands. For example:

- `mkdir` creates directories.
- `cd` changes the current directory.
- `touch` creates files.
- `cp` copies files.
- `echo` writes text.
- `ls` displays files and directories.
- `cat` displays file contents.
- `chmod` changes execution permissions.
- `mv` moves or renames files.
- `sort` orders output.
- `head` selects the first records.

Using Bash throughout the project made the workflow reproducible and provided a direct foundation for the later Hadoop commands.

---

# 📁 2. PageTurner Books Directory

The first stage was to create a structured local directory representing the bookstore's digital storage environment.

## Create the main directory

```bash
cd ~
mkdir PageTurnerBooks
ls
```

## Create the project subdirectories

```bash
cd PageTurnerBooks

mkdir inventory
mkdir customer
mkdir orders
mkdir reviews
mkdir library

ls
```

The resulting structure was:

```text
PageTurnerBooks/
├── inventory/
├── customer/
├── orders/
├── reviews/
└── library/
```

## Create inventory files

The inventory directory was used to store the catalogue and bestseller information.

```bash
cd inventory

touch book_catalog.csv
touch bestsellers.txt

ls
```

## Copy the bestseller file

A copy of `bestsellers.txt` was placed in the reviews directory while retaining the original inventory copy.

```bash
cp bestsellers.txt ../reviews/

ls
ls ../reviews/
```

## Create and populate `store_info.md`

The store information file was created at the root of the PageTurner Books directory.

```bash
cd ..

touch store_info.md

echo "PageTurner Books Ltd is an independent bookstore based in Manchester specializing in fiction, non-fiction, and rare books." > store_info.md

cat store_info.md
```

This completed the local Bash-based storage structure before moving into distributed processing.

---

# 🏗️ 3. Hadoop Architecture

The distributed-processing stage used a Hadoop environment containing a **master node and worker node**.

## HDFS — Hadoop Distributed File System

HDFS provides Hadoop's distributed storage layer.

In this project, the book datasets were moved from the Ubuntu local filesystem into HDFS before processing. Hadoop outputs were also stored in HDFS before being retrieved to Ubuntu for inspection.

The basic data movement was:

```text
Ubuntu Local Filesystem
          ↓
         HDFS
          ↓
Distributed Processing
          ↓
      HDFS Output
          ↓
Ubuntu Local Filesystem
```

## MapReduce

MapReduce provides the distributed processing model.

The two workflows followed the same general pattern but solved different analytical problems.

### Word frequency

```text
Raw Text
   ↓
Mapper
   ↓
word → 1
   ↓
Shuffle / Sort
   ↓
Reducer
   ↓
word → total frequency
```

### Sentence count

```text
Raw Text
   ↓
Mapper
   ↓
sentence → 1
   ↓
Shuffle / Sort
   ↓
Reducer
   ↓
Total number of sentences
```

## YARN — Yet Another Resource Negotiator

YARN manages cluster resources and coordinates the execution of Hadoop jobs.

For the text-processing workflows, YARN was involved in executing the Hadoop Streaming jobs across the Hadoop environment.

## Hadoop Common

Hadoop Common provides shared libraries and utilities used by the wider Hadoop ecosystem.

It supports the components and utilities required for HDFS, YARN and Hadoop-based processing.

## How the components work together

```text
                 Hadoop Cluster
                       │
        ┌──────────────┴──────────────┐
        │                             │
       HDFS                          YARN
 Distributed Storage          Resource Management
        │                             │
        └──────────────┬──────────────┘
                       ↓
                    MapReduce
                       │
              ┌────────┴────────┐
              ↓                 ↓
           Mapper          Shuffle / Sort
                                ↓
                             Reducer
                                ↓
                      Structured Results
```

---

# 🖥️ 4. Hadoop Cluster Setup

The Hadoop workflows were carried out using a master/worker environment.

The first step was to start the Hadoop services on the master.

## Master node

```bash
start-dfs.sh
start-yarn.sh
jps
```

## Worker node

```bash
jps
```

The Java process lists were used to verify that the Hadoop services were running.

The environment included services such as:

- NameNode
- SecondaryNameNode
- DataNode
- ResourceManager
- NodeManager

This verification was performed before running the MapReduce workflows.

---

# 📚 5. Word Frequency Analysis — A Christmas Carol

## Objective

The first distributed text-analysis workflow processes *A Christmas Carol* by Charles Dickens.

The purpose is to count word occurrences throughout the text and identify the **ten most frequent words**.

This converts an unstructured literary document into structured frequency data that can be used for basic vocabulary, keyword and writing-style analysis.

---

## Step 1 — Create a working directory

```bash
cd ~
mkdir Question2_Task_B1
cd Question2_Task_B1
pwd
```

## Step 2 — Copy the dataset

```bash
cp ~/Downloads/"A Christmas Carol.txt" .
ls
```

The dataset was placed inside the dedicated working directory before being uploaded to HDFS.

---

## Step 3 — Create the word-count mapper

```bash
nano word_count_mapper.py
```

The mapper was implemented as:

```python
#!/usr/bin/env python3

import sys
import re

for line in sys.stdin:
    line = line.strip().lower()
    words = re.findall(r'\b[a-z]+\b', line)

    for word in words:
        print(f"{word}\t1")
```

### Mapper logic

The mapper:

1. Reads the input one line at a time.
2. Removes surrounding whitespace.
3. Converts text to lowercase.
4. Uses a regular expression to extract alphabetic words.
5. Emits each word with a value of `1`.

For example:

```text
Christmas
```

becomes:

```text
christmas    1
```

Repeated occurrences are therefore converted into multiple key/value records that can later be aggregated by the reducer.

---

## Step 4 — Create the word-count reducer

```bash
nano word_count_reducer.py
```

The reducer was implemented as:

```python
#!/usr/bin/env python3

import sys

last_key = None
running_total = 0

for input_line in sys.stdin:
    input_line = input_line.strip()
    this_key, value = input_line.split("\t", 1)
    value = int(value)

    if last_key == this_key:
        running_total += value
    else:
        if last_key:
            print(f"{last_key}\t{running_total}")

        running_total = value
        last_key = this_key

if last_key == this_key:
    print(f"{last_key}\t{running_total}")
```

### Reducer logic

The reducer receives grouped word/value pairs from Hadoop's shuffle and sort stage.

It:

1. Reads each key/value record.
2. Tracks the current word.
3. Adds together repeated values.
4. Outputs the final frequency for each word.

The result is a structured dataset of:

```text
word    frequency
```

---

## Step 5 — Make the scripts executable

```bash
chmod +x word_count_mapper.py
chmod +x word_count_reducer.py
ls -l
```

The permissions were checked to confirm that both Python programs could be executed by Hadoop Streaming.

---

## Step 6 — Create the HDFS working directory

```bash
hadoop fs -mkdir /user/ubong-etok/WordCount_ChristmasCarol
hadoop fs -ls /user/ubong-etok
```

This created the HDFS location used for the Christmas Carol dataset and its output.

---

## Step 7 — Upload the dataset to HDFS

```bash
hadoop fs -put A_Christmas_Carol.txt /user/ubong-etok/WordCount_ChristmasCarol/
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol
```

The dataset was now available within distributed storage.

---

## Step 8 — Run Hadoop Streaming

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar -files /home/ubong-etok/Question2_Task_B1/word_count_mapper.py,/home/ubong-etok/Question2_Task_B1/word_count_reducer.py -mapper "python3 word_count_mapper.py" -reducer "python3 word_count_reducer.py" -input /user/ubong-etok/WordCount_ChristmasCarol/A_Christmas_Carol.txt -output /user/ubong-etok/WordCount_ChristmasCarol/output
```

The Hadoop Streaming job connected the Python mapper and reducer to the distributed Hadoop processing framework.

The workflow was:

```text
A Christmas Carol.txt
        ↓
      HDFS
        ↓
Python Mapper
        ↓
word / 1
        ↓
Shuffle & Sort
        ↓
Python Reducer
        ↓
Word Frequencies
```

---

## Step 9 — Verify Hadoop output

```bash
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol/output
```

The presence of the generated result file and `_SUCCESS` marker confirmed that Hadoop completed the processing job successfully.

---

## Step 10 — Retrieve the results

```bash
hadoop fs -get /user/ubong-etok/WordCount_ChristmasCarol/output
ls output
```

The Hadoop output was copied from HDFS back to the Ubuntu filesystem so it could be inspected locally.

---

## Step 11 — View the complete frequency output

```bash
cat output/part-00000
```

The `part-00000` file contained the generated word-frequency results.

---

## Step 12 — Rank the ten most frequent words

```bash
sort -k2 -nr output/part-00000 | head -10
```

The frequency values were sorted numerically in descending order and the first ten records were selected.

### Results

| Rank | Word | Frequency |
|---:|---|---:|
| 1 | `the` | 1,791 |
| 2 | `and` | 1,139 |
| 3 | `of` | 865 |
| 4 | `a` | 774 |
| 5 | `to` | 761 |
| 6 | `in` | 589 |
| 7 | `it` | 560 |
| 8 | `he` | 492 |
| 9 | `was` | 427 |
| 10 | `his` | 417 |

The result provides a structured vocabulary profile of the book. Because the workflow counts all extracted words, common grammatical words naturally dominate the ranking.

---

# 📖 6. Sentence Count Analysis — Moby Dick

## Objective

The second distributed text-analysis workflow processes *Moby Dick; Or, The Whale* by Herman Melville.

The objective is to calculate the **total number of sentences** in the book.

The resulting value provides a simple measure of textual scale that could potentially support book-complexity classification and recommendation strategies.

---

## Step 1 — Create a working directory

```bash
cd ~
mkdir Question2_Task_B2
cd Question2_Task_B2
ls
```

## Step 2 — Copy the dataset

```bash
cp ~/Downloads/"Moby Dick or The Whale.txt" .
ls
```

The dataset was copied from the Ubuntu Downloads directory into the dedicated B.2 working directory.

---

## Step 3 — Create the sentence mapper

```bash
nano total_sentences_mapper.py
```

The mapper was implemented as:

```python
#!/usr/bin/env python3

import sys
import re

for line in sys.stdin:
    sentences = re.findall(r'[.!?]+', line)

    for sentence in sentences:
        print("sentence\t1")
```

### Mapper logic

The mapper reads the text line by line and searches for sentence-ending punctuation:

```text
.
!
?
```

Each detected sentence boundary produces:

```text
sentence    1
```

The individual records can then be aggregated by the reducer.

---

## Step 4 — Create the sentence reducer

```bash
nano total_sentences_reducer.py
```

The reducer was implemented as:

```python
#!/usr/bin/env python3

import sys

total_sentences = 0

for line in sys.stdin:
    line = line.strip()
    word, count = line.split('\t')
    total_sentences += int(count)

print("Total Sentences\t", total_sentences)
```

### Reducer logic

The reducer receives the sentence records and adds all the `1` values together.

Conceptually:

```text
sentence    1
sentence    1
sentence    1
...
       ↓
Total Sentences    N
```

---

## Step 5 — Make the scripts executable

```bash
chmod +x total_sentences_mapper.py
chmod +x total_sentences_reducer.py
ls -l
```

The file permissions were checked before testing and Hadoop execution.

---

## Step 6 — Validate the mapper and reducer locally

Before uploading the full book to Hadoop, the mapper and reducer were tested locally using the two specified sample statements.

### Test 1

```bash
echo "Hello! Welcome to Page Turner Books Ltd." | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

### Test 2

```bash
echo "Page Turner Books? Well, we are a great company!" | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

This local pipeline:

```text
echo
 ↓
Mapper
 ↓
Reducer
 ↓
Sentence Count
```

provided an early validation of the sentence-detection and aggregation logic before deploying the workflow to Hadoop.

### AI-assisted development

AI assistance was used specifically during the development of:

- `total_sentences_mapper.py`
- `total_sentences_reducer.py`

The scripts were subsequently tested locally and executed through the Hadoop Streaming workflow.

---

## Step 7 — Create the HDFS directory

```bash
hdfs dfs -mkdir -p /user/ubong-etok
hadoop fs -mkdir MobyDick_Sentences
hadoop fs -ls
```

This prepared the HDFS location for the Moby Dick dataset.

---

## Step 8 — Rename and upload the dataset

```bash
mv *Whale* Moby_Dick_or_The_Whale.txt

hadoop fs -put Moby_Dick_or_The_Whale.txt /user/ubong-etok/MobyDick_Sentences/
```

The local filename was standardised before the dataset was uploaded to HDFS.

---

## Step 9 — Verify the HDFS upload

```bash
hadoop fs -ls /user/ubong-etok/MobyDick_Sentences/
```

The directory listing confirmed that the book was successfully available in HDFS.

---

## Step 10 — Run Hadoop Streaming

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar -files /home/ubong-etok/Question2_Task_B2/total_sentences_mapper.py,/home/ubong-etok/Question2_Task_B2/total_sentences_reducer.py -mapper "python3 total_sentences_mapper.py" -reducer "python3 total_sentences_reducer.py" -input /user/ubong-etok/MobyDick_Sentences/Moby_Dick_or_The_Whale.txt -output /user/ubong-etok/MobyDick_Sentences/output
```

The distributed workflow was:

```text
Moby_Dick_or_The_Whale.txt
          ↓
         HDFS
          ↓
 Sentence Mapper
          ↓
    sentence / 1
          ↓
    Shuffle / Sort
          ↓
 Sentence Reducer
          ↓
  Total Sentence Count
```

---

## Step 11 — Retrieve the Hadoop output

```bash
hdfs dfs -get /user/ubong-etok/MobyDick_Sentences/output ./output
```

The generated Hadoop output was copied back to the Ubuntu filesystem for inspection.

---

## Step 12 — Check the output files

```bash
ls output
```

The output directory contained the generated result and `_SUCCESS` marker, confirming successful completion of the Hadoop job.

---

## Step 13 — View the final result

```bash
cat output/part-00000
```

### Final Result

```text
Total Sentences    10941
```

**Total sentences: 10,941**

The mapper detected sentence boundaries and emitted one record for each detected sentence. The reducer then aggregated the records into the final total.

---

# 🔄 7. MapReduce Workflow Comparison

The two analytical workflows use the same fundamental MapReduce pattern while solving different problems.

| | Word Frequency | Sentence Count |
|---|---|---|
| **Dataset** | *A Christmas Carol* | *Moby Dick; Or, The Whale* |
| **Mapper output** | `word → 1` | `sentence → 1` |
| **Shuffle / Sort** | Groups identical words | Groups sentence records |
| **Reducer** | Sums values for each word | Sums all sentence records |
| **Final output** | Frequency of every word | One total sentence count |
| **Final result** | Top 10 ranked words | 10,941 sentences |

The common architecture demonstrates how the mapper/reducer pattern can be adapted to different forms of unstructured text analysis.

---

# 📊 8. Results and Interpretation

## A Christmas Carol

The ten most frequent words were:

```text
the    1791
and    1139
of      865
a       774
to      761
in      589
it      560
he      492
was     427
his     417
```

The result demonstrates how distributed text processing can transform a literary document into structured frequency data.

The same approach could be extended across a larger catalogue to identify recurring keywords, vocabulary patterns or other textual characteristics.

## Moby Dick

The sentence-count workflow produced:

```text
Total Sentences    10941
```

This provides a simple quantitative measure of the size and structure of the text. Across a larger book collection, comparable measurements could contribute to classification and recommendation systems.

---

# 🔍 9. Validation and Verification

Validation was built into the workflow rather than relying solely on the final result.

### Local filesystem validation

```bash
ls
```

was repeatedly used to confirm that directories, datasets, scripts and output files existed in the expected locations.

### File-content validation

```bash
cat
```

was used to inspect generated files and final analytical output.

### Hadoop process validation

```bash
jps
```

was used on the master and worker environments to verify Hadoop Java processes.

### HDFS validation

```bash
hadoop fs -ls
```

was used to verify HDFS directories, datasets and generated output.

### Job-completion validation

The Hadoop `_SUCCESS` marker was checked after the MapReduce jobs.

### Mapper/reducer validation

The sentence-count mapper and reducer were tested locally using the required `echo` statements before deployment to Hadoop.

### Output validation

Hadoop output was retrieved to Ubuntu using:

```bash
hadoop fs -get
```

or:

```bash
hdfs dfs -get
```

The generated `part-00000` files were then inspected using:

```bash
cat output/part-00000
```

### Ranking validation

The complete word-frequency output was ranked using:

```bash
sort -k2 -nr output/part-00000 | head -10
```

This produced the final top-ten ranking.

---

# 🖼️ 10. Implementation Evidence

The `visualizations/` directory contains terminal screenshots captured throughout the implementation.

These images document the progression from local Ubuntu file management through Hadoop setup, data upload, MapReduce execution and final result retrieval.

## Ubuntu / Bash

![PageTurnerBooks Directory](visualizations/Q1_01_Create_PageTurnerBooks_Directory.png)

![Project Subdirectories](visualizations/Q1_02_Create_Project_Subdirectories.png)

![Inventory Files](visualizations/Q1_03_Create_Inventory_Files.png)

![Bestseller Copy](visualizations/Q1_04_Copy_Bestsellers_to_Reviews.png)

![Store Information](visualizations/Q1_05_Create_and_Populate_Store_Info.png)

## Word Frequency — A Christmas Carol

![Hadoop Cluster](visualizations/Q2_01_Start_Hadoop_and_Verify_Cluster.png)

![B1 Working Directory](visualizations/Q2_02_Create_B1_Working_Directory.png)

![Christmas Carol Dataset](visualizations/Q2_03_Copy_A_Christmas_Carol_Dataset.png)

![Word Mapper](visualizations/Q2_04_Create_Word_Frequency_Mapper.png)

![Word Reducer](visualizations/Q2_05_Create_Word_Frequency_Reducer.png)

![Permissions](visualizations/Q2_06_Word_Frequency_Scripts_and_Permissions.png)

![Reducer Code](visualizations/Q2_07_Word_Frequency_Reducer_Code.png)

![Executable Scripts](visualizations/Q2_08_Verify_Executable_Scripts.png)

![HDFS Directory](visualizations/Q2_09_Create_Word_Count_HDFS_Directory.png)

![HDFS Upload](visualizations/Q2_10_Upload_Christmas_Carol_to_HDFS.png)

![Streaming Execution](visualizations/Q2_11_Hadoop_Streaming_Execution_Output.png)

![HDFS Output](visualizations/Q2_12_Verify_HDFS_Output_Files.png)

![Retrieved Output](visualizations/Q2_13_Retrieve_Word_Frequency_Output.png)

![Complete Frequency Output](visualizations/Q2_14_Complete_Word_Frequency_Output.png)

![Top 10](visualizations/Q2_15_Top_10_Word_Frequencies.png)

## Sentence Count — Moby Dick

![Hadoop Startup](visualizations/Q2_16_Start_Hadoop_for_Sentence_Count.png)

![B2 Directory](visualizations/Q2_17_Create_B2_Working_Directory.png)

![Moby Dick Dataset](visualizations/Q2_18_Copy_Moby_Dick_Dataset.png)

![Sentence Mapper](visualizations/Q2_19_Create_Sentence_Count_Mapper.png)

![Sentence Reducer](visualizations/Q2_20_Create_Sentence_Count_Reducer.png)

![Permissions](visualizations/Q2_21_Sentence_Count_Scripts_and_Permissions.png)

![Script Verification](visualizations/Q2_22_Verify_Sentence_Count_Scripts.png)

![Local Testing](visualizations/Q2_23_Local_Mapper_Reducer_Testing.png)

![HDFS Directory](visualizations/Q2_24_Create_Sentence_Count_HDFS_Directory.png)

![Moby Dick Upload](visualizations/Q2_25_Upload_Moby_Dick_to_HDFS.png)

![Upload Verification](visualizations/Q2_26_Confirm_Moby_Dick_HDFS_Upload.png)

![Sentence Streaming](visualizations/Q2_27_Run_Sentence_Count_Hadoop_Streaming.png)

![Streaming Output](visualizations/Q2_28_Sentence_Count_Streaming_Output.png)

![Retrieved Result](visualizations/Q2_29_Retrieve_Sentence_Count_Output.png)

![Output Files](visualizations/Q2_30_Verify_Sentence_Count_Output_Files.png)

![Final Sentence Count](visualizations/Q2_31_Final_Sentence_Count_Output.png)

---

# 📂 11. Repository Structure

```text
hadoop-distributed-text-analytics/
│
├── README.md
│
├── code/
│   └── batch commands used in hadoop distributed text analytics.txt
│
├── data/
│   ├── A Christmas Carol.txt
│   └── Moby Dick or The Whale.txt
│
└── visualizations/
    ├── Q1_01_Create_PageTurnerBooks_Directory.png
    ├── Q1_02_Create_Project_Subdirectories.png
    ├── Q1_03_Create_Inventory_Files.png
    ├── Q1_04_Copy_Bestsellers_to_Reviews.png
    ├── Q1_05_Create_and_Populate_Store_Info.png
    ├── Q2_01_Start_Hadoop_and_Verify_Cluster.png
    ├── Q2_02_Create_B1_Working_Directory.png
    ├── Q2_03_Copy_A_Christmas_Carol_Dataset.png
    ├── Q2_04_Create_Word_Frequency_Mapper.png
    ├── Q2_05_Create_Word_Frequency_Reducer.png
    ├── Q2_06_Word_Frequency_Scripts_and_Permissions.png
    ├── Q2_07_Word_Frequency_Reducer_Code.png
    ├── Q2_08_Verify_Executable_Scripts.png
    ├── Q2_09_Create_Word_Count_HDFS_Directory.png
    ├── Q2_10_Upload_Christmas_Carol_to_HDFS.png
    ├── Q2_11_Hadoop_Streaming_Execution_Output.png
    ├── Q2_12_Verify_HDFS_Output_Files.png
    ├── Q2_13_Retrieve_Word_Frequency_Output.png
    ├── Q2_14_Complete_Word_Frequency_Output.png
    ├── Q2_15_Top_10_Word_Frequencies.png
    ├── Q2_16_Start_Hadoop_for_Sentence_Count.png
    ├── Q2_17_Create_B2_Working_Directory.png
    ├── Q2_18_Copy_Moby_Dick_Dataset.png
    ├── Q2_19_Create_Sentence_Count_Mapper.png
    ├── Q2_20_Create_Sentence_Count_Reducer.png
    ├── Q2_21_Sentence_Count_Scripts_and_Permissions.png
    ├── Q2_22_Verify_Sentence_Count_Scripts.png
    ├── Q2_23_Local_Mapper_Reducer_Testing.png
    ├── Q2_24_Create_Sentence_Count_HDFS_Directory.png
    ├── Q2_25_Upload_Moby_Dick_to_HDFS.png
    ├── Q2_26_Confirm_Moby_Dick_HDFS_Upload.png
    ├── Q2_27_Run_Sentence_Count_Hadoop_Streaming.png
    ├── Q2_28_Sentence_Count_Streaming_Output.png
    ├── Q2_29_Retrieve_Sentence_Count_Output.png
    ├── Q2_30_Verify_Sentence_Count_Output_Files.png
    └── Q2_31_Final_Sentence_Count_Output.png
```

---

# ♻️ 12. Reproducibility

The project can be reproduced using an Ubuntu environment with Hadoop configured as a master/worker cluster.

## Start Hadoop

On the master:

```bash
start-dfs.sh
start-yarn.sh
jps
```

On the worker:

```bash
jps
```

## Datasets

The repository contains:

```text
data/A Christmas Carol.txt
data/Moby Dick or The Whale.txt
```

## Command history

The complete command sequence used during implementation is retained in:

```text
code/batch commands used in hadoop distributed text analytics.txt
```

The repository therefore contains the datasets, implementation evidence and command workflow needed to understand and reproduce the project.

### Environment-specific paths

The original Hadoop commands use the Ubuntu user path:

```text
/home/ubong-etok/
```

When reproducing the project under a different Ubuntu account, this path should be changed to match the local username and Hadoop installation.

---

# 📝 13. Implementation Notes

## Hadoop Streaming and Python

Hadoop Streaming allows programs that work with standard input and standard output to participate in Hadoop MapReduce jobs.

This made Python suitable for the mapper and reducer programs.

## Mapper

The mapper transforms raw input into intermediate key/value records.

Examples:

```text
word → 1
```

or:

```text
sentence → 1
```

## Shuffle and Sort

Hadoop groups intermediate records by key before passing them to the reducer.

For word frequency, identical words are grouped together.

For sentence counting, the sentence records are aggregated for the final count.

## Reducer

The reducer performs the aggregation required to transform intermediate records into the final result.

## Local validation

The Moby Dick mapper and reducer were deliberately tested locally before the full dataset was processed by Hadoop. This reduced the risk of deploying untested sentence-counting logic to the cluster.

## HDFS retrieval

Results were retrieved from HDFS back to Ubuntu so that standard Linux utilities could be used to inspect and rank the generated output.

---

# ⚠️ 14. Limitations and Considerations

## Word-frequency processing

The word-frequency mapper:

- converts text to lowercase;
- extracts alphabetic word sequences;
- counts all extracted words.

Consequently, common grammatical words such as `the`, `and`, `of` and `a` naturally appear at the top.

A more advanced NLP workflow could introduce:

- stop-word removal;
- stemming;
- lemmatisation;
- named-entity recognition;
- phrase extraction.

## Sentence detection

The sentence mapper uses:

```python
r'[.!?]+'
```

This provides a straightforward rule-based method for detecting sentence boundaries.

However, literary text can contain punctuation conventions that make simple punctuation-based detection imperfect. Abbreviations, quotations and other special cases could require a more sophisticated natural-language sentence tokenizer.

## Environment dependency

The Hadoop commands depend on:

- the installed Hadoop version;
- the Hadoop Streaming JAR location;
- the Ubuntu username;
- the configured master/worker environment.

Therefore, paths may need to be adapted when running the project on another machine.

## Analytical scope

This project demonstrates focused distributed text-processing workflows rather than a complete production recommendation or marketing platform.

The same architecture could be extended to a much larger digital book catalogue and combined with additional textual and behavioural features.

---

# 📚 15. References

- Apache Hadoop. [Hadoop Documentation](https://hadoop.apache.org/docs/)
- Dean, J. and Ghemawat, S. (2008). “MapReduce: Simplified Data Processing on Large Clusters.” *Communications of the ACM*, 51(1), pp. 107–113.
- Free Software Foundation. [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)
- Griffiths, I. *MS4S21 Big Data Engineering and its Applications — Lecture Materials*. University of South Wales.
- Project Gutenberg. *A Christmas Carol* by Charles Dickens.
- Project Gutenberg. *Moby Dick; Or, The Whale* by Herman Melville.

### AI-assisted development

AI assistance was used specifically during development of the B.2 sentence-counting Python files:

```text
total_sentences_mapper.py
total_sentences_reducer.py
```

The resulting scripts were then locally validated and executed through the Hadoop Streaming workflow.

---

# 👤 Author

**Ubong Etok**

Data Science | Data Analytics | Business Intelligence | SQL | Machine Learning

- GitHub: [@xzibitetok](https://github.com/xzibitetok)
- Portfolio: [xzibitetok.github.io](https://xzibitetok.github.io)

---

## ⭐ Project Summary

```text
Ubuntu
  ↓
Bash
  ↓
Linux File Management
  ↓
Hadoop Master / Worker
  ↓
HDFS
  ↓
Python Mapper / Reducer
  ↓
Hadoop Streaming
  ↓
MapReduce
  ↓
Structured Output
  ↓
Text Analytics
```

This project demonstrates a complete progression from **Linux command-line fundamentals to distributed Big Data processing**, showing how unstructured literary data can be stored, processed and transformed into meaningful structured results using Hadoop and Python.
