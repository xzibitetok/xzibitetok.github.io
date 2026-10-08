# 🐘 Hadoop Distributed Text Analytics

![Hadoop](https://img.shields.io/badge/Apache%20Hadoop-Distributed%20Computing-66CCFF?logo=apachehadoop&logoColor=black)
![HDFS](https://img.shields.io/badge/HDFS-Distributed%20Storage-1f77b4)
![YARN](https://img.shields.io/badge/YARN-Resource%20Management-orange)
![MapReduce](https://img.shields.io/badge/MapReduce-Distributed%20Processing-red)
![Python](https://img.shields.io/badge/Python-Mapper%20%7C%20Reducer-3776AB?logo=python)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Linux-E95420?logo=ubuntu&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-Command%20Line-4EAA25?logo=gnubash&logoColor=white)
![Reproducible Workflow](https://img.shields.io/badge/Workflow-Reproducible-lightgrey)

> An end-to-end distributed text analytics project using Ubuntu, Bash, HDFS, YARN, Hadoop Streaming, MapReduce and Python to organise book data, calculate word frequencies in *A Christmas Carol*, and determine the total number of sentences in *Moby Dick; Or, The Whale*.

---

## 📑 Table of Contents

1. [Project Overview](#project-overview)
2. [Project Objectives](#project-objectives)
3. [Technical Requirements Addressed](#technical-requirements-addressed)
4. [Hadoop Architecture](#hadoop-architecture)
5. [Technology Stack](#technology-stack)
6. [Project Workflow](#project-workflow)
7. [Ubuntu and Bash Foundation](#ubuntu-and-bash-foundation)
8. [PageTurner Books Directory Structure](#pageturner-books-directory-structure)
9. [Hadoop Cluster Setup](#hadoop-cluster-setup)
10. [Word Frequency Analysis — A Christmas Carol](#word-frequency-analysis--a-christmas-carol)
11. [Sentence Count Analysis — Moby Dick](#sentence-count-analysis--moby-dick)
12. [Results and Business Interpretation](#results-and-business-interpretation)
13. [Validation and Evidence](#validation-and-evidence)
14. [Visualisations and Screenshots](#visualisations-and-screenshots)
15. [Repository Structure](#repository-structure)
16. [Reproducibility](#reproducibility)
17. [Implementation Notes](#implementation-notes)
18. [Limitations and Considerations](#limitations-and-considerations)
19. [References](#references)
20. [Author](#author)

---

<a name="project-overview"></a>

## 📌 Project Overview

PageTurner Books Ltd. is an independent online bookstore whose growing collection of books requires a more structured approach to data organisation and large-scale text processing.

This project demonstrates a complete command-line and distributed-computing workflow. The work began in an Ubuntu environment with Bash-based file and directory management, progressed to a two-node Hadoop environment, and finished with structured analytical outputs generated through Hadoop MapReduce.

The overall workflow was:

**Ubuntu/Bash → File Organisation → Hadoop Cluster → HDFS → Python Mapper/Reducer → Hadoop Streaming → Structured Output → Text Analytics**

Two analytical tasks were implemented:

- **Word Frequency Analysis:** count occurrences of words in *A Christmas Carol* and identify the ten most frequent words.
- **Sentence Count Analysis:** calculate the total number of sentences in *Moby Dick; Or, The Whale*.

The project demonstrates both foundational Linux command-line skills and practical Big Data engineering using distributed storage and processing.

---

<a name="project-objectives"></a>

## 🎯 Project Objectives

- Build a structured business-oriented directory system using Bash commands in Ubuntu.
- Demonstrate Bash as a Linux command-line shell and scripting environment.
- Create and manage files and directories without a graphical file manager.
- Explain the roles of HDFS, MapReduce, YARN and Hadoop Common.
- Start and verify a master/worker Hadoop cluster.
- Store book data in HDFS before distributed processing.
- Implement Python Hadoop Streaming mapper and reducer scripts.
- Perform word-frequency analysis on *A Christmas Carol*.
- Identify and rank the top 10 most frequent words.
- Develop a sentence-counting MapReduce workflow for *Moby Dick; Or, The Whale*.
- Test the sentence-counting mapper and reducer locally before Hadoop execution.
- Verify Hadoop outputs and retrieve them to the Ubuntu filesystem.
- Demonstrate the transformation of unstructured literary text into structured analytical output.

---

<a name="technical-requirements-addressed"></a>

## ✅ Technical Requirements Addressed

| Area | Requirement | Implementation |
|---|---|---|
| Linux/Bash | Explain and use Bash | Ubuntu terminal and Bash commands |
| File management | `mkdir`, `cd`, `touch`, `cp`, `echo`, `ls` | Used throughout directory setup |
| Directory structure | Create `PageTurnerBooks` and five subdirectories | `inventory`, `customer`, `orders`, `reviews`, `library` |
| Inventory files | Create `book_catalog.csv` and `bestsellers.txt` | Created with `touch` |
| File duplication | Copy `bestsellers.txt` to `reviews` | Implemented with `cp` while retaining original |
| Store information | Create `store_info.md` | Created and populated with `touch` and `echo` |
| Hadoop architecture | HDFS, MapReduce, YARN, Hadoop Common | Explained below |
| Cluster | Master + worker | HDFS/YARN started and verified with `jps` |
| B.1 | Word mapper | `word_count_mapper.py` |
| B.1 | Word reducer | `word_count_reducer.py` |
| B.1 | Hadoop processing | HDFS + Hadoop Streaming |
| B.1 | Top 10 words | `sort` + `head` |
| B.2 | Sentence mapper | `total_sentences_mapper.py` |
| B.2 | Sentence reducer | `total_sentences_reducer.py` |
| B.2 | Local validation | `echo` + mapper/reducer pipeline |
| B.2 | Distributed processing | Hadoop Streaming |
| B.2 | Final result | Retrieved from Hadoop output |

---

<a name="hadoop-architecture"></a>

## 🏗️ Hadoop Architecture

### HDFS — Hadoop Distributed File System

HDFS supplied the distributed storage layer. The two book datasets were uploaded from the Ubuntu local filesystem into HDFS so Hadoop could access them as cluster inputs. Generated outputs were also stored in HDFS.

### MapReduce

MapReduce supplied the distributed processing model.

**Word frequency:**

`Text → Mapper → word/1 pairs → Shuffle/Sort → Reducer → Word Frequencies`

**Sentence count:**

`Text → Mapper → sentence/1 records → Shuffle/Sort → Reducer → Total Sentences`

### YARN — Yet Another Resource Negotiator

YARN provided resource management and job execution for the Hadoop Streaming workloads.

### Hadoop Common

Hadoop Common provides shared Hadoop libraries and utilities used by the Hadoop ecosystem. In this project, the Hadoop installation supplied the utilities and libraries required for HDFS, YARN and Hadoop Streaming.

### How the components worked together

```text
Ubuntu/Bash
    │
    ▼
HDFS ── distributed storage
    │
    ▼
YARN ── resource management
    │
    ▼
MapReduce
    │
    ├── Mapper
    ├── Shuffle/Sort
    └── Reducer
    │
    ▼
Structured Analytical Output
```

---

<a name="technology-stack"></a>

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| **Ubuntu Linux** | Operating environment |
| **Bash** | Command-line file, directory and process management |
| **Apache Hadoop** | Distributed processing framework |
| **HDFS** | Distributed storage |
| **YARN** | Resource management and job execution |
| **MapReduce** | Distributed processing model |
| **Hadoop Streaming** | Integration of Python with MapReduce |
| **Python 3** | Mapper and reducer implementation |
| **GNU/Linux utilities** | File inspection, sorting and result handling |
| **VirtualBox** | Virtualised master/worker environment |

---

<a name="project-workflow"></a>

## 🔄 Project Workflow

```text
Ubuntu Environment
        ↓
Bash Fundamentals
        ↓
PageTurnerBooks Directory
        ↓
Hadoop Master/Worker Cluster
        ↓
Start HDFS + YARN
        ↓
Verify Hadoop Processes
        ↓
Prepare Book Dataset
        ↓
Create Python Mapper/Reducer
        ↓
Set Permissions / Test
        ↓
Upload Dataset to HDFS
        ↓
Run Hadoop Streaming
        ↓
Verify Distributed Output
        ↓
Retrieve Results to Ubuntu
        ↓
Inspect / Rank Analytical Results
```

---

<a name="ubuntu-and-bash-foundation"></a>

## 🐧 Ubuntu and Bash Foundation

### What is Bash?

Bash, or **Bourne Again Shell**, is a command-line shell and scripting language widely used in Unix and Linux environments such as Ubuntu. It provides a direct interface between the user and operating system through typed commands.

Bash was developed as part of the GNU Project as a replacement for the Bourne Shell and became a standard command interpreter for Linux.

For technical and Big Data environments, Bash is useful because commands can be executed precisely, repeated, combined into pipelines and incorporated into scripts.

### Bash vs GUI

A GUI uses icons, menus and windows. Bash provides direct command-line access. For this implementation, Bash was appropriate because the storage-system operations were performed through the Ubuntu terminal rather than a graphical file manager. This made the process precise, repeatable and easy to document as a command sequence.

### Core commands

| Command | Use |
|---|---|
| `mkdir` | Create directories |
| `cd` | Navigate directories |
| `touch` | Create empty files |
| `cp` | Copy files |
| `echo` | Write text to a file |
| `ls` | Verify files/directories |
| `cat` | Display file contents/results |
| `chmod` | Set script execution permissions |
| `sort` | Rank frequency results |
| `head` | Select top results |
| `mv` | Rename the Moby Dick dataset |
| `jps` | Verify Hadoop Java processes |

---

<a name="pageturner-books-directory-structure"></a>

## 📁 PageTurner Books Directory Structure

### 1. Create the main directory

```bash
cd ~
mkdir PageTurnerBooks
ls
```

### 2. Create subdirectories

```bash
cd PageTurnerBooks

mkdir inventory
mkdir customer
mkdir orders
mkdir reviews
mkdir library

ls
```

Result:

```text
PageTurnerBooks/
├── inventory/
├── customer/
├── orders/
├── reviews/
└── library/
```

### 3. Create inventory files

```bash
cd inventory

touch book_catalog.csv
touch bestsellers.txt

ls
```

### 4. Copy the bestseller file

```bash
cp bestsellers.txt ../reviews/

ls
ls ../reviews/
```

The original remained in `inventory`, while a copy was placed in `reviews`.

### 5. Create and populate `store_info.md`

```bash
cd ..

touch store_info.md

echo "PageTurner Books Ltd is an independent bookstore based in Manchester specializing in fiction, non-fiction, and rare books." > store_info.md

cat store_info.md
```

This completed the Bash-based storage structure.

---

<a name="hadoop-cluster-setup"></a>

## 🖥️ Hadoop Cluster Setup

The distributed stage used a master and worker Hadoop environment.

### Master

```bash
start-dfs.sh
start-yarn.sh
jps
```

### Worker

```bash
jps
```

The Java process lists were checked to confirm the required Hadoop services were running, including NameNode, SecondaryNameNode, DataNode, ResourceManager and NodeManager.

---

<a name="word-frequency-analysis--a-christmas-carol"></a>

## 📚 Word Frequency Analysis — A Christmas Carol

### Objective

Count occurrences of every word in *A Christmas Carol* and identify the ten most frequent words. This provides a basic text profile that can support keyword-oriented marketing and analysis of the author's writing style.

### 1. Create the working directory

```bash
cd ~
mkdir Question2_Task_B1
cd Question2_Task_B1
pwd
```

### 2. Copy the dataset

```bash
cp ~/Downloads/"A Christmas Carol.txt" .
ls
```

### 3. Create the mapper

```bash
nano word_count_mapper.py
```

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

The mapper reads the input line by line, converts text to lowercase, extracts alphabetic words and emits each word with a value of `1`.

### 4. Create the reducer

```bash
nano word_count_reducer.py
```

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

The reducer aggregates repeated word keys into total frequencies.

### 5. Make scripts executable

```bash
chmod +x word_count_mapper.py
chmod +x word_count_reducer.py
ls -l
```

### 6. Create the HDFS directory

```bash
hadoop fs -mkdir /user/ubong-etok/WordCount_ChristmasCarol
hadoop fs -ls /user/ubong-etok
```

### 7. Upload the dataset

```bash
hadoop fs -put A_Christmas_Carol.txt /user/ubong-etok/WordCount_ChristmasCarol/
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol
```

### 8. Run Hadoop Streaming

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar -files /home/ubong-etok/Question2_Task_B1/word_count_mapper.py,/home/ubong-etok/Question2_Task_B1/word_count_reducer.py -mapper "python3 word_count_mapper.py" -reducer "python3 word_count_reducer.py" -input /user/ubong-etok/WordCount_ChristmasCarol/A_Christmas_Carol.txt -output /user/ubong-etok/WordCount_ChristmasCarol/output
```

### 9. Verify output

```bash
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol/output
```

The output directory contained the Hadoop result and `_SUCCESS` marker.

### 10. Retrieve results

```bash
hadoop fs -get /user/ubong-etok/WordCount_ChristmasCarol/output
ls output
```

### 11. View the complete frequency output

```bash
cat output/part-00000
```

### 12. Rank the top 10 words

```bash
sort -k2 -nr output/part-00000 | head -10
```

### Top 10 Results

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

---

<a name="sentence-count-analysis--moby-dick"></a>

## 📖 Sentence Count Analysis — Moby Dick

### Objective

Calculate the total number of sentences in *Moby Dick; Or, The Whale*. The resulting count provides a simple measure of textual scale that could contribute to book-complexity classification and recommendations for advanced readers.

### 1. Create the working directory

```bash
cd ~
mkdir Question2_Task_B2
cd Question2_Task_B2
ls
```

### 2. Copy the dataset

```bash
cp ~/Downloads/"Moby Dick or The Whale.txt" .
ls
```

### 3. Create the sentence mapper

```bash
nano total_sentences_mapper.py
```

```python
#!/usr/bin/env python3

import sys
import re

for line in sys.stdin:
    sentences = re.findall(r'[.!?]+', line)

    for sentence in sentences:
        print("sentence\t1")
```

The mapper detects sentence-ending punctuation and emits one `sentence/1` record for each detected sentence.

### 4. Create the sentence reducer

```bash
nano total_sentences_reducer.py
```

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

The reducer sums all sentence records into one final total.

### 5. Make scripts executable

```bash
chmod +x total_sentences_mapper.py
chmod +x total_sentences_reducer.py
ls -l
```

### 6. Test locally before Hadoop execution

The required test sentences were passed through the mapper/reducer pipeline.

```bash
echo "Hello! Welcome to Page Turner Books Ltd." | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

```bash
echo "Page Turner Books? Well, we are a great company!" | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

This local validation checked the sentence-detection logic before cluster execution.

### 7. Create the HDFS directory

```bash
hdfs dfs -mkdir -p /user/ubong-etok
hadoop fs -mkdir MobyDick_Sentences
hadoop fs -ls
```

### 8. Rename and upload the dataset

```bash
mv *Whale* Moby_Dick_or_The_Whale.txt

hadoop fs -put Moby_Dick_or_The_Whale.txt /user/ubong-etok/MobyDick_Sentences/
```

### 9. Verify the upload

```bash
hadoop fs -ls /user/ubong-etok/MobyDick_Sentences/
```

### 10. Run Hadoop Streaming

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar -files /home/ubong-etok/Question2_Task_B2/total_sentences_mapper.py,/home/ubong-etok/Question2_Task_B2/total_sentences_reducer.py -mapper "python3 total_sentences_mapper.py" -reducer "python3 total_sentences_reducer.py" -input /user/ubong-etok/MobyDick_Sentences/Moby_Dick_or_The_Whale.txt -output /user/ubong-etok/MobyDick_Sentences/output
```

### 11. Retrieve the output

```bash
hdfs dfs -get /user/ubong-etok/MobyDick_Sentences/output ./output
```

### 12. Check the output files

```bash
ls output
```

The Hadoop output included the result file and `_SUCCESS` marker.

### 13. View the final result

```bash
cat output/part-00000
```

### Final Result

**Total sentences: 10,941**

The mapper identified sentence boundaries and the reducer aggregated the individual counts into the final total.

---

<a name="results-and-business-interpretation"></a>

## 📊 Results and Business Interpretation

### *A Christmas Carol*

The word-frequency analysis identified the following dominant terms:

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

The result demonstrates how distributed text processing can produce a structured vocabulary profile from an unstructured literary document. In a larger collection, the same workflow could be extended to identify recurring keywords and support marketing or literary-style analysis.

### *Moby Dick; Or, The Whale*

The sentence-count workflow produced:

```text
Total Sentences    10941
```

This provides a simple measure of textual scale. In a larger catalogue, comparable measures could contribute to book-length or complexity classification and recommendation strategies.

### MapReduce Pattern Comparison

| Task | Mapper Output | Reducer Operation | Final Output |
|---|---|---|---|
| Word frequency | `word → 1` | Sum values by word | Frequency for each word |
| Sentence count | `sentence → 1` | Sum all records | One total sentence count |

---

<a name="validation-and-evidence"></a>

## 🔍 Validation and Evidence

Validation was performed at multiple stages:

1. `ls` was used to verify local directories and files.
2. `cat` was used to inspect generated file contents.
3. `jps` was used on master and worker nodes to verify Hadoop services.
4. `hadoop fs -ls` was used to verify HDFS directories and uploads.
5. `_SUCCESS` was checked after Hadoop jobs.
6. The B.2 mapper and reducer were tested locally with `echo`.
7. Hadoop outputs were retrieved to Ubuntu with `hadoop fs -get` / `hdfs dfs -get`.
8. The word-frequency output was ranked using `sort -k2 -nr ... | head -10`.
9. Final results were inspected through `part-00000`.

---

<a name="visualisations-and-screenshots"></a>

## 🖼️ Visualisations and Screenshots

The `visualizations/` folder contains the terminal screenshots captured during the implementation. These are primarily workflow and implementation evidence rather than conventional statistical charts.

### Question 1 — Ubuntu/Bash

![PageTurnerBooks Directory](visualizations/Q1_01_Create_PageTurnerBooks_Directory.png)

![Project Subdirectories](visualizations/Q1_02_Create_Project_Subdirectories.png)

![Inventory Files](visualizations/Q1_03_Create_Inventory_Files.png)

![Bestseller Copy](visualizations/Q1_04_Copy_Bestsellers_to_Reviews.png)

![Store Information](visualizations/Q1_05_Create_and_Populate_Store_Info.png)

### Question 2 — Word Frequency

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

### Question 2 — Sentence Count

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

<a name="repository-structure"></a>

## 📂 Repository Structure

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

<a name="reproducibility"></a>

## ♻️ Reproducibility

The repository is organised around the supplied datasets, command log and implementation evidence.

### 1. Prepare Ubuntu

Use an Ubuntu environment with Hadoop configured as a master/worker cluster.

### 2. Start Hadoop

```bash
start-dfs.sh
start-yarn.sh
jps
```

Verify the worker:

```bash
jps
```

### 3. Review the command workflow

The complete command sequence is stored in:

```text
code/batch commands used in hadoop distributed text analytics.txt
```

### 4. Use the supplied datasets

```text
data/A Christmas Carol.txt
data/Moby Dick or The Whale.txt
```

### 5. Run the mapper/reducer workflows

Follow the command log and Python implementations to reproduce each MapReduce workflow.

### Environment note

The original commands contain the Ubuntu/Hadoop user path:

```text
/home/ubong-etok/
```

A different environment may require this path to be changed to match its Hadoop installation and username.

---

<a name="implementation-notes"></a>

## 📝 Implementation Notes

### Python and Hadoop Streaming

Hadoop Streaming allowed executable programs using standard input/output to participate in MapReduce jobs, making Python suitable for both analytics tasks.

### Mapper/reducer separation

- **Mapper:** transforms raw text into intermediate key/value records.
- **Shuffle/Sort:** groups records by key.
- **Reducer:** aggregates grouped values into final results.

### Local validation before deployment

The sentence-count scripts were tested with the required sample statements before the full Moby Dick dataset was uploaded to HDFS. This provided an early validation of the sentence-detection and aggregation logic.

### HDFS-to-local retrieval

Results were copied back from HDFS into Ubuntu so the generated files could be inspected, ranked and reported with standard Linux commands.

---

<a name="limitations-and-considerations"></a>

## ⚠️ Limitations and Considerations

### Word frequency

The word-frequency mapper converts text to lowercase and extracts alphabetic sequences. Common grammatical terms therefore dominate the top-ranking output. A more advanced NLP pipeline could add stop-word removal, stemming or lemmatisation.

### Sentence detection

The sentence mapper uses:

```python
r'[.!?]+'
```

This is a straightforward rule-based sentence detector and may not perfectly handle every literary punctuation convention.

### Environment dependency

The Hadoop Streaming commands depend on the Hadoop installation path and Ubuntu username used during implementation. Paths may require adjustment in another environment.

### Analytical scope

The project demonstrates two focused MapReduce workflows rather than a complete production recommendation or marketing platform. The same architecture could be extended to larger book collections and more sophisticated text features.

---

<a name="references"></a>

## 📚 References

- Apache Hadoop (2025). *Hadoop Documentation*. https://hadoop.apache.org/docs/
- Dean, J. and Ghemawat, S. (2008). “MapReduce: Simplified Data Processing on Large Clusters.” *Communications of the ACM*, 51(1), pp. 107–113.
- Free Software Foundation (2025). *Bash Reference Manual*. https://www.gnu.org/software/bash/manual/bash.html
- Griffiths, I. (2026a). *MS4S21 Big Data Engineering and its Applications — Lecture 1*. University of South Wales.
- Griffiths, I. (2026b). *MS4S21 Big Data Engineering and its Applications — Lecture 2*. University of South Wales.
- Griffiths, I. (2026). *MS4S21 Big Data Engineering and its Applications — Lecture 3 & 4*. University of South Wales.
- Project Gutenberg. *A Christmas Carol* by Charles Dickens.
- Project Gutenberg. *Moby Dick; Or, The Whale* by Herman Melville.

### AI-assisted development

AI assistance was used specifically in the development of the B.2 `total_sentences_mapper.py` and `total_sentences_reducer.py` files, consistent with the permitted use of AI for those two files. The scripts were then locally tested and executed through Hadoop Streaming.

---

<a name="author"></a>

## 👤 Author

**Ubong Etok**

**MSc Data Science | Data Analytics | Business Intelligence | SQL | Machine Learning**

- **GitHub:** https://github.com/xzibitetok
- **Portfolio:** https://xzibitetok.github.io

---

## ⭐ Project Summary

**Bash → Ubuntu → Structured File Management → Hadoop Cluster → HDFS → YARN → MapReduce → Python Streaming → Text Analytics → Structured Results**

This project demonstrates how unstructured literary text can be moved through a distributed processing pipeline and transformed into practical analytical outputs, including word-frequency rankings and a total sentence count.
