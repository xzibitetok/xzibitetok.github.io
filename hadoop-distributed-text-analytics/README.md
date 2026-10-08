# 🐘 Hadoop Distributed Text Analytics

![Apache Hadoop](https://img.shields.io/badge/Apache%20Hadoop-Distributed%20Computing-66CCFF?logo=apachehadoop&logoColor=black)
![HDFS](https://img.shields.io/badge/HDFS-Distributed%20Storage-1f77b4)
![YARN](https://img.shields.io/badge/YARN-Resource%20Management-orange)
![MapReduce](https://img.shields.io/badge/MapReduce-Distributed%20Processing-red)
![Python](https://img.shields.io/badge/Python-Mapper%20%7C%20Reducer-3776AB?logo=python)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Linux-E95420?logo=ubuntu&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-Command%20Line-4EAA25?logo=gnubash&logoColor=white)
![Hadoop Streaming](https://img.shields.io/badge/Hadoop%20Streaming-Python-orange)
![Reproducible](https://img.shields.io/badge/Workflow-Reproducible-lightgrey)

> An end-to-end Big Data engineering project implemented in Ubuntu using Bash, HDFS, YARN, Hadoop MapReduce and Python Hadoop Streaming to organise PageTurner Books Ltd.'s data and perform distributed text analytics on *A Christmas Carol* and *Moby Dick; Or, The Whale*.

---

## 📑 Table of Contents

1. [Project Overview](#project-overview)
2. [Project Context](#project-context)
3. [Project Objectives](#project-objectives)
4. [Requirements Covered](#requirements-covered)
5. [Technology Stack](#technology-stack)
6. [Bash and Ubuntu](#bash-and-ubuntu)
7. [Question 1 — Task A: Bash](#question-1--task-a-bash)
8. [Question 1 — Task B: PageTurner Books Directory](#question-1--task-b-pageturner-books-directory)
9. [Hadoop Architecture](#hadoop-architecture)
10. [HDFS](#hdfs)
11. [MapReduce](#mapreduce)
12. [YARN](#yarn)
13. [Hadoop Common](#hadoop-common)
14. [How the Hadoop Components Work Together](#how-the-hadoop-components-work-together)
15. [Question 2 — B.1 Word Frequency Count](#question-2--b1-word-frequency-count)
16. [B.1 Introduction](#b1-introduction)
17. [B.1 Step 1 — Starting Hadoop and Verifying the Cluster](#b1-step-1--starting-hadoop-and-verifying-the-cluster)
18. [B.1 Step 2 — Creating the Working Directory](#b1-step-2--creating-the-working-directory)
19. [B.1 Step 3 — Copying the Input File](#b1-step-3--copying-the-input-file)
20. [B.1 Step 4 — Creating the Mapper](#b1-step-4--creating-the-mapper)
21. [B.1 Step 5 — Creating the Reducer](#b1-step-5--creating-the-reducer)
22. [B.1 Step 6 — Making the Scripts Executable](#b1-step-6--making-the-scripts-executable)
23. [B.1 Step 7 — Creating the HDFS Directory](#b1-step-7--creating-the-hdfs-directory)
24. [B.1 Step 8 — Uploading the File to HDFS](#b1-step-8--uploading-the-file-to-hdfs)
25. [B.1 Step 9 — Running Hadoop Streaming](#b1-step-9--running-hadoop-streaming)
26. [B.1 Step 10 — Confirming the Hadoop Output](#b1-step-10--confirming-the-hadoop-output)
27. [B.1 Step 11 — Copying Output to Ubuntu](#b1-step-11--copying-output-to-ubuntu)
28. [B.1 Step 12 — Viewing Complete Word Frequencies](#b1-step-12--viewing-complete-word-frequencies)
29. [B.1 Step 13 — Identifying the Top 10 Words](#b1-step-13--identifying-the-top-10-words)
30. [B.1 Results](#b1-results)
31. [B.1 Conclusion](#b1-conclusion)
32. [Question 2 — B.2 Total Number of Sentences](#question-2--b2-total-number-of-sentences)
33. [B.2 Introduction](#b2-introduction)
34. [B.2 Step 1 — Starting Hadoop and Verifying Both Machines](#b2-step-1--starting-hadoop-and-verifying-both-machines)
35. [B.2 Step 2 — Creating the Working Directory](#b2-step-2--creating-the-working-directory)
36. [B.2 Step 3 — Copying Moby Dick](#b2-step-3--copying-moby-dick)
37. [B.2 Step 4 — Creating the Mapper](#b2-step-4--creating-the-mapper)
38. [B.2 Step 5 — Creating the Reducer](#b2-step-5--creating-the-reducer)
39. [B.2 Step 6 — Making the Scripts Executable](#b2-step-6--making-the-scripts-executable)
40. [B.2 Step 7 — Testing with Echo](#b2-step-7--testing-with-echo)
41. [B.2 Step 8 — Creating the HDFS Directory](#b2-step-8--creating-the-hdfs-directory)
42. [B.2 Step 9 — Uploading the File](#b2-step-9--uploading-the-file)
43. [B.2 Step 10 — Confirming the Upload](#b2-step-10--confirming-the-upload)
44. [B.2 Step 11 — Running Hadoop Streaming](#b2-step-11--running-hadoop-streaming)
45. [B.2 Step 12 — Copying the Output to Ubuntu](#b2-step-12--copying-the-output-to-ubuntu)
46. [B.2 Step 13 — Checking the Output Files](#b2-step-13--checking-the-output-files)
47. [B.2 Step 14 — Viewing the Output](#b2-step-14--viewing-the-output)
48. [B.2 Step 15 — Identifying the Final Sentence Count](#b2-step-15--identifying-the-final-sentence-count)
49. [B.2 Result](#b2-result)
50. [B.2 Conclusion](#b2-conclusion)
51. [Validation and Verification](#validation-and-verification)
52. [Key Findings](#key-findings)
53. [Business Interpretation](#business-interpretation)
54. [Limitations](#limitations)
55. [Visual Evidence](#visual-evidence)
56. [Repository Structure](#repository-structure)
57. [Reproducibility](#reproducibility)
58. [Project Files](#project-files)
59. [Release](#release)
60. [References](#references)
61. [Author](#author)

---

<a name="project-overview"></a>

## 📌 Project Overview

PageTurner Books Ltd. is a rapidly growing independent online bookstore whose increasing volume of book, customer, order, review and inventory information requires a more organised technical infrastructure.

This project documents the implementation of a Linux-based storage structure and a Hadoop distributed text-processing workflow.

The work begins in an Ubuntu environment with Bash command-line operations. A structured `PageTurnerBooks` directory is created and populated. The project then moves into a two-node Hadoop environment consisting of a master and worker machine, where HDFS provides distributed storage and YARN and MapReduce provide the processing infrastructure.

Two text analytics workflows are subsequently implemented using Python mapper and reducer scripts through Hadoop Streaming:

1. **Word Frequency Count — *A Christmas Carol***  
   Count the occurrences of words and identify the ten most frequent words.

2. **Total Number of Sentences — *Moby Dick; Or, The Whale***  
   Identify the total number of sentences in the book.

The complete workflow is:

```text
Ubuntu
   ↓
Bash
   ↓
PageTurnerBooks Directory Structure
   ↓
Hadoop Master + Worker
   ↓
HDFS
   ↓
Python Mapper / Reducer
   ↓
Hadoop Streaming
   ↓
Distributed MapReduce Processing
   ↓
Structured Output
   ↓
Text Analytics
```

The project therefore combines Linux administration, command-line data organisation, distributed storage, distributed processing and practical text analytics.

---

<a name="project-context"></a>

## 📖 Project Context

The implementation was designed around the operational needs of PageTurner Books Ltd.

The initial environment had business information distributed across different locations, including customer orders, inventory information, reviews and bestseller lists. The first stage therefore established a basic storage structure through Bash.

Once the directory foundation had been established, Hadoop was used to process larger literary text files. The business requirements were:

- use word frequency analysis on *A Christmas Carol* to identify commonly used words that could support targeted marketing keywords and understanding of Dickens' writing style;
- calculate the total number of sentences in *Moby Dick; Or, The Whale* as a basic measure that could support understanding of longer and more complex books for advanced readers.

---

<a name="project-objectives"></a>

## 🎯 Project Objectives

The project objectives were to:

- understand Bash and its role within Linux;
- understand why command-line operations can be useful compared with graphical interfaces;
- demonstrate the use of `mkdir`, `cd`, `touch`, `cp`, `echo` and `ls`;
- build the required PageTurner Books directory structure;
- explain the major Hadoop architecture components;
- configure and verify the Hadoop master/worker environment;
- use HDFS for distributed storage;
- use MapReduce for distributed processing;
- use YARN for resource management;
- create a Python word-frequency mapper and reducer;
- create a Python sentence-count mapper and reducer;
- validate the sentence-count scripts locally before Hadoop execution;
- upload the book datasets into HDFS;
- execute Hadoop Streaming jobs;
- retrieve and inspect the generated results;
- identify the top ten words in *A Christmas Carol*;
- calculate the total number of sentences in *Moby Dick; Or, The Whale*;
- demonstrate how unstructured text can be transformed into structured analytical output.

---

<a name="requirements-covered"></a>

## ✅ Requirements Covered

| Area | Implementation |
|---|---|
| Bash overview | Bash defined and its Linux role discussed |
| Bash history | Bash described as Bourne Again Shell and GNU Bourne Shell replacement |
| Bash vs GUI | Command-line and graphical interaction compared |
| `mkdir` | Directories created |
| `cd` | Ubuntu directory navigation |
| `touch` | Required files created |
| `cp` | `bestsellers.txt` copied to `reviews` |
| `echo` | `store_info.md` populated |
| `ls` | Creation and transfer checks |
| PageTurnerBooks | Root directory created in Ubuntu home |
| Business subdirectories | `inventory`, `customer`, `orders`, `reviews`, `library` |
| Inventory files | `book_catalog.csv`, `bestsellers.txt` |
| Hadoop architecture | HDFS, MapReduce, YARN and Hadoop Common |
| Cluster | Master and worker verified |
| B.1 mapper | `word_count_mapper.py` |
| B.1 reducer | `word_count_reducer.py` |
| B.1 HDFS | Dataset uploaded to HDFS |
| B.1 Streaming | Hadoop Streaming executed |
| B.1 output | Complete word frequencies retrieved |
| B.1 ranking | Top 10 identified |
| B.2 mapper | `total_sentences_mapper.py` |
| B.2 reducer | `total_sentences_reducer.py` |
| B.2 local test | Required `echo` statements used |
| B.2 HDFS | Dataset uploaded to HDFS |
| B.2 Streaming | Hadoop Streaming executed |
| B.2 result | 10,941 sentences |

---

<a name="technology-stack"></a>

## 🛠️ Technology Stack

| Technology | Role |
|---|---|
| **Ubuntu Linux** | Operating environment |
| **Bash** | Command-line administration and file management |
| **Apache Hadoop** | Big Data processing framework |
| **HDFS** | Distributed file storage |
| **YARN** | Cluster resource management |
| **MapReduce** | Distributed computation |
| **Hadoop Streaming** | Runs Python programs as Hadoop mapper/reducer processes |
| **Python 3** | Mapper and reducer implementation |
| **GNU/Linux utilities** | `cat`, `ls`, `sort`, `head`, `chmod`, `mv`, `echo` |
| **Virtualised master/worker environment** | Distributed Hadoop cluster |

---

<a name="bash-and-ubuntu"></a>

## 🐧 Bash and Ubuntu

### Brief Overview of Bash

Bash, also known as the **Bourne Again Shell**, is a command-line shell and scripting language widely used in Unix and Linux operating systems such as Ubuntu.

Bash was originally written for the GNU Project as a replacement for the Bourne Shell and is one of the standard command interpreters for Linux.

Bash acts as an intermediary between the user and the operating system. Instead of interacting with the computer through graphical menus, the user enters commands directly into a terminal.

### Importance of Bash in Linux Systems

Bash is particularly important to Linux systems because it provides system-level access and file-management capabilities.

Linux systems are frequently used in virtualised and Big Data environments because they provide efficiency, flexibility and a high level of system control. Bash allows users to:

- create and manage files;
- create and manage directories;
- automate processes;
- configure environments;
- execute repeatable command sequences.

### Bash versus a Graphical User Interface

A Graphical User Interface (GUI) allows users to interact with a computer through icons, menus and windows.

Bash can be more effective for technical operations because routine tasks can be executed quickly, commands can be automated through scripts and command-line operations generally consume fewer system resources.

For this project, Bash was appropriate because the PageTurner Books storage system was required to be created through command-line operations rather than a GUI file manager.

### Key Bash Commands

#### `mkdir`

`mkdir` means **make directory** and creates folders.

It was used to create the `PageTurnerBooks` directory and its subdirectories.

#### `cd`

`cd` means **change directory** and moves between directories.

It was used to move into `PageTurnerBooks`, `inventory` and back to the PageTurner Books root.

#### `touch`

`touch` creates empty files.

It was used to create:

- `book_catalog.csv`
- `bestsellers.txt`
- `store_info.md`

#### `cp`

`cp` copies files between locations.

It was used to copy `bestsellers.txt` from `inventory` to `reviews` while retaining the original.

#### `echo`

`echo` outputs text to the terminal or writes text into a file.

It was used to populate `store_info.md`.

#### `ls`

`ls` lists files and directories.

It was repeatedly used to verify that directories, files and copied data existed correctly.

---

<a name="question-1--task-a-bash"></a>

## Question 1 — Task A: Bash

The Bash component establishes the Linux foundation for the project.

Bash was used because it allows file and directory operations to be performed directly from Ubuntu's terminal. It provides a precise and repeatable method for managing the storage structure and is particularly appropriate for technical environments where command sequences need to be documented and reproduced.

The six required commands were demonstrated through the PageTurner Books implementation:

```text
mkdir → create directories
cd    → navigate directories
touch → create files
cp    → copy files
echo  → write text
ls    → verify contents
```

The outcome was a structured business directory that could subsequently support the Hadoop work.

---

<a name="question-1--task-b-pageturner-books-directory"></a>

## Question 1 — Task B: PageTurner Books Directory

### Introduction

The PageTurner Books directory structure was created using Bash commands only.

The purpose was to create a structured storage system in Ubuntu for the company's business data. Each operation was verified using terminal commands so that the resulting file and directory structure could be confirmed.

### Step 1: Creating `PageTurnerBooks`

The first step was to move to the Ubuntu home directory.

```bash
cd ~
mkdir PageTurnerBooks
ls
```

The `PageTurnerBooks` directory was created in the user's home directory and `ls` was used to confirm its creation.

### Step 2: Creating Subdirectories

The next step was to enter `PageTurnerBooks` and create the five required subdirectories.

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

These directories categorise the business information and provide a structure that can support future growth.

### Step 3: Creating Two Empty Inventory Files

The `inventory` directory was entered and two files were created.

```bash
cd inventory

touch book_catalog.csv
touch bestsellers.txt

ls
```

The two files provide:

- `book_catalog.csv` — storage for structured inventory information;
- `bestsellers.txt` — storage for information about bestselling books.

### Step 4: Copying `bestsellers.txt` to Reviews

The bestseller file was copied to the `reviews` directory.

```bash
cp bestsellers.txt ../reviews/

ls
ls ../reviews/
```

The original file remained in `inventory`, while the copy was placed in `reviews`.

This demonstrates how Bash can duplicate information to another destination without removing the original.

### Step 5: Creating `store_info.md`

The final directory operation was to return to the `PageTurnerBooks` root.

```bash
cd ..
touch store_info.md
echo "PageTurner Books Ltd is an independent bookstore based in Manchester specializing in fiction, non-fiction, and rare books." > store_info.md
cat store_info.md
```

The `store_info.md` file provides a simple Markdown-based company description.

`cat` was used to display the contents and confirm that the information had been written correctly.

### Question 1 Conclusion

The PageTurner Books directory structure was successfully developed using Bash commands.

The implementation demonstrates how command-line applications can be used to systematise files and directories effectively. The resulting organised framework provides a scalable method of handling business data.

---

<a name="hadoop-architecture"></a>

## 🏗️ Hadoop Architecture

Hadoop is a Big Data framework architecture that enables organisations to process large datasets across a cluster of machines.

The project uses four core Hadoop concepts:

1. HDFS
2. MapReduce
3. YARN
4. Hadoop Common

---

<a name="hdfs"></a>

## HDFS

**Hadoop Distributed File System (HDFS)** is the storage layer of Hadoop.

In this project, the book datasets were transferred from the Ubuntu local filesystem into HDFS before Hadoop processing.

For example:

```bash
hadoop fs -put A_Christmas_Carol.txt /user/ubong-etok/WordCount_ChristmasCarol/
```

and:

```bash
hadoop fs -put Moby_Dick_or_The_Whale.txt /user/ubong-etok/MobyDick_Sentences/
```

HDFS therefore provided the distributed storage location from which Hadoop jobs could access the input data.

---

<a name="mapreduce"></a>

## MapReduce

**MapReduce** provides the distributed processing model.

The model separates processing into mapping and reducing stages.

For word frequency:

```text
Input Text
    ↓
Mapper
    ↓
(word, 1)
    ↓
Shuffle / Sort
    ↓
Reducer
    ↓
(word, total frequency)
```

For sentence counting:

```text
Input Text
    ↓
Mapper
    ↓
(sentence, 1)
    ↓
Shuffle / Sort
    ↓
Reducer
    ↓
Total Sentences
```

The mapper transforms raw text into intermediate key/value pairs. Hadoop then groups the intermediate values by key, after which the reducer performs aggregation.

---

<a name="yarn"></a>

## YARN

**Yet Another Resource Negotiator (YARN)** is Hadoop's resource-management and job-scheduling layer.

The Hadoop services were started with:

```bash
start-dfs.sh
start-yarn.sh
```

The cluster was then checked using:

```bash
jps
```

YARN was therefore involved in managing the Hadoop Streaming jobs executed against the cluster.

---

<a name="hadoop-common"></a>

## Hadoop Common

**Hadoop Common** contains the shared libraries and utilities required by the other Hadoop modules.

It provides the common foundation used by components such as HDFS, YARN and MapReduce.

The Hadoop Streaming JAR used in this project was located within the Hadoop installation:

```text
/usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar
```

---

<a name="how-the-hadoop-components-work-together"></a>

## 🔗 How the Hadoop Components Work Together

The project follows this relationship:

```text
                 ┌─────────────────────┐
                 │     Ubuntu/Bash     │
                 │ File Preparation    │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │        HDFS         │
                 │ Distributed Storage │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │        YARN         │
                 │ Resource Management │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │      MapReduce      │
                 │ Map → Shuffle → Red │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │ Structured Results  │
                 └─────────────────────┘
```

Hadoop Common supplies the shared infrastructure and utilities supporting the Hadoop ecosystem.

---

<a name="question-2--b1-word-frequency-count"></a>

## 📚 Question 2 — B.1 Word Frequency Count

### Objective

The first distributed analytics task was to count the occurrences of each word in *A Christmas Carol* using the Hadoop cluster and identify the ten most frequent words.

The workflow consisted of:

1. writing a Python mapper;
2. writing a Python reducer;
3. starting Hadoop;
4. creating a working directory;
5. copying the book locally;
6. making the scripts executable;
7. creating an HDFS directory;
8. uploading the book to HDFS;
9. running Hadoop Streaming;
10. verifying the output;
11. retrieving the result to Ubuntu;
12. inspecting the complete frequency output;
13. ranking the top ten words.

---

<a name="b1-introduction"></a>

## B.1 Introduction

PageTurner Books Ltd. expects to use Big Data analytics to gain information about its book collection using Hadoop.

This task uses Hadoop MapReduce to perform Word Frequency Analysis on *A Christmas Carol* in order to gain insight into marketing the text and the writing style used by the author.

The practical implementation consists of writing Python-based mapper and reducer scripts, uploading the text file into HDFS, running a Hadoop Streaming job and analysing the resulting output.

---

<a name="b1-step-1--starting-hadoop-and-verifying-the-cluster"></a>

## B.1 Step 1 — Starting Hadoop and Verifying the Cluster

The Hadoop services were launched on the master machine using the HDFS and YARN startup commands.

```bash
start-dfs.sh
start-yarn.sh
jps
```

On the worker machine:

```bash
jps
```

The Java process lists were checked to ensure that the required Hadoop services were running, including:

- NameNode
- SecondaryNameNode
- ResourceManager
- DataNode
- NodeManager

This verified that the master and worker virtual machines were communicating before processing began.

---

<a name="b1-step-2--creating-the-working-directory"></a>

## B.1 Step 2 — Creating the Working Directory

A dedicated working directory was created for the word-frequency task.

```bash
cd ~
mkdir Question2_Task_B1
cd Question2_Task_B1
pwd
```

The directory was used to keep the mapper, reducer, input file and generated outputs organised in one location.

---

<a name="b1-step-3--copying-the-input-file"></a>

## B.1 Step 3 — Copying the Input File

The *A Christmas Carol* file was copied from the Ubuntu Downloads directory.

```bash
cp ~/Downloads/"A Christmas Carol.txt" .
ls
```

The `ls` command confirmed that the input file had been copied successfully.

---

<a name="b1-step-4--creating-the-mapper"></a>

## B.1 Step 4 — Creating the Mapper

The mapper was created with:

```bash
nano word_count_mapper.py
```

The implementation was:

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

The mapper reads the text file line by line.

Each line is stripped and converted to lowercase. A regular expression is then used to identify individual alphabetic words.

Each identified word is emitted with a value of `1`.

For example:

```text
christmas    1
carol        1
scrooge      1
```

This converts raw text into key/value pairs that can be distributed across the Hadoop cluster.

---

<a name="b1-step-5--creating-the-reducer"></a>

## B.1 Step 5 — Creating the Reducer

The reducer was created with:

```bash
nano word_count_reducer.py
```

The implementation was:

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

The reducer receives the mapper's key/value pairs and combines identical words into one frequency total.

The result is therefore a structured word-frequency dataset.

---

<a name="b1-step-6--making-the-scripts-executable"></a>

## B.1 Step 6 — Making the Scripts Executable

Both scripts were given execution permissions.

```bash
chmod +x word_count_mapper.py
chmod +x word_count_reducer.py
ls -l
```

The `ls -l` output was used to verify that executable permissions had been granted.

---

<a name="b1-step-7--creating-the-hdfs-directory"></a>

## B.1 Step 7 — Creating the HDFS Directory

A dedicated HDFS directory was created for the word-frequency task.

```bash
hadoop fs -mkdir /user/ubong-etok/WordCount_ChristmasCarol
hadoop fs -ls /user/ubong-etok
```

This directory was used to store the uploaded text file and generated Hadoop output.

---

<a name="b1-step-8--uploading-the-file-to-hdfs"></a>

## B.1 Step 8 — Uploading the File to HDFS

The input file was transferred into HDFS.

```bash
hadoop fs -put A_Christmas_Carol.txt /user/ubong-etok/WordCount_ChristmasCarol/
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol
```

The directory listing verified that the input file was available to Hadoop.

---

<a name="b1-step-9--running-hadoop-streaming"></a>

## B.1 Step 9 — Running Hadoop Streaming

Hadoop Streaming was used to execute the Python mapper and reducer.

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B1/word_count_mapper.py,/home/ubong-etok/Question2_Task_B1/word_count_reducer.py \
-mapper "python3 word_count_mapper.py" \
-reducer "python3 word_count_reducer.py" \
-input /user/ubong-etok/WordCount_ChristmasCarol/A_Christmas_Carol.txt \
-output /user/ubong-etok/WordCount_ChristmasCarol/output
```

The Hadoop Streaming process distributed the task across the Hadoop environment.

The mapper generated intermediate word/count pairs and the reducer aggregated identical words to generate the final word-frequency counts.

---

<a name="b1-step-10--confirming-the-hadoop-output"></a>

## B.1 Step 10 — Confirming the Hadoop Output

The HDFS output directory was inspected.

```bash
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol/output
```

The presence of the `part-00000` output and `_SUCCESS` marker confirmed that Hadoop completed the job and wrote the results successfully.

---

<a name="b1-step-11--copying-output-to-ubuntu"></a>

## B.1 Step 11 — Copying Output to Ubuntu

The Hadoop output was transferred from HDFS back into the local Ubuntu filesystem.

```bash
hadoop fs -get /user/ubong-etok/WordCount_ChristmasCarol/output
ls output
```

This made the results available for local inspection and ranking.

---

<a name="b1-step-12--viewing-complete-word-frequencies"></a>

## B.1 Step 12 — Viewing Complete Word Frequencies

The complete word-frequency output was displayed using:

```bash
cat output/part-00000
```

The `part-00000` file contained the final word-frequency dataset generated by MapReduce.

---

<a name="b1-step-13--identifying-the-top-10-words"></a>

## B.1 Step 13 — Identifying the Top 10 Words

The complete output was sorted in descending order by frequency.

```bash
sort -k2 -nr output/part-00000 | head -10
```

The `sort` command ordered the frequency values numerically in descending order, while `head -10` selected the first ten records.

---

<a name="b1-results"></a>

## 📊 B.1 Results

The top ten words identified were:

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

The output demonstrates that Hadoop successfully transformed the unstructured literary text into a structured frequency dataset.

---

<a name="b1-conclusion"></a>

## B.1 Conclusion

This task illustrates how Hadoop MapReduce can be used to perform Word Frequency Analysis on *A Christmas Carol*.

The workflow included:

- writing mapper and reducer scripts;
- starting Hadoop services;
- uploading the data to HDFS;
- running the Hadoop Streaming job;
- analysing the generated output.

The results confirmed that Hadoop was effective in processing the text file and producing precise word-frequency counts stored in the `part-00000` output file.

The `_SUCCESS` marker confirmed successful completion of the job.

The most common words provide information about typical vocabulary and writing style.

Overall, the workflow demonstrates how Hadoop can convert unstructured text data into structured analytical output that could support keyword analysis, marketing strategies and recommendation systems for PageTurner Books Ltd.

---

<a name="question-2--b2-total-number-of-sentences"></a>

## 📖 Question 2 — B.2 Total Number of Sentences

### Objective

The second distributed analytics task was to calculate the total number of sentences in *Moby Dick; Or, The Whale*.

The workflow was:

```text
Moby Dick Text
     ↓
Sentence Mapper
     ↓
sentence / 1
     ↓
Shuffle / Sort
     ↓
Sentence Reducer
     ↓
Total Sentences
```

---

<a name="b2-introduction"></a>

## B.2 Introduction

PageTurner Books Ltd. is implementing the engineering aspects of Big Data to analyse large digital book files.

The task requires the total number of sentences in *Moby Dick; Or, The Whale* to be identified using Hadoop MapReduce.

This is a real-world text-processing problem in which an unstructured text file is converted into a structured numerical output.

The input file was imported into the BDEA-master Ubuntu virtual machine.

The process consisted of preparing the mapper and reducer, testing the scripts locally, uploading the book into HDFS, running Hadoop Streaming and inspecting the generated result.

---

<a name="b2-step-1--starting-hadoop-and-verifying-both-machines"></a>

## B.2 Step 1 — Starting Hadoop and Verifying Both Machines

Hadoop services were started on the master.

```bash
start-dfs.sh
start-yarn.sh
jps
```

The worker machine was checked with:

```bash
jps
```

The Java process lists were used to verify the required Hadoop services, including NameNode, DataNode, ResourceManager and NodeManager.

This confirmed that the master and worker machines were running before the sentence-count process began.

---

<a name="b2-step-2--creating-the-working-directory"></a>

## B.2 Step 2 — Creating the Working Directory

A dedicated working directory was created for the B.2 task.

```bash
cd ~
mkdir Question2_Task_B2
cd Question2_Task_B2
ls
```

The directory stored the scripts, input file and generated output for the sentence-count workflow.

---

<a name="b2-step-3--copying-moby-dick"></a>

## B.2 Step 3 — Copying Moby Dick

The Moby Dick input file was copied from Downloads.

```bash
cp ~/Downloads/"Moby Dick or The Whale.txt" .
ls
```

The `ls` command confirmed that the file was available locally.

---

<a name="b2-step-4--creating-the-mapper"></a>

## B.2 Step 4 — Creating the Mapper

The mapper was created with:

```bash
nano total_sentences_mapper.py
```

The implementation was:

```python
#!/usr/bin/env python3
import sys
import re

for line in sys.stdin:
  sentences = re.findall(r'[.!?]+', line)
  for sentence in sentences:
     print("sentence\t1")
```

The mapper reads the input line by line and identifies sentence-ending punctuation:

- `.`
- `!`
- `?`

Each detected sentence generates:

```text
sentence    1
```

This provides the first stage of the distributed sentence-counting process.

AI assistance was used specifically to support the development of this mapper, in accordance with the permitted use of AI for the B.2 mapper and reducer.

---

<a name="b2-step-5--creating-the-reducer"></a>

## B.2 Step 5 — Creating the Reducer

The reducer was created with:

```bash
nano total_sentences_reducer.py
```

The implementation was:

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

The reducer accepts the sentence counts produced by the mapper and adds them together to produce one aggregated total.

AI assistance was used specifically to support the development of this reducer.

---

<a name="b2-step-6--making-the-scripts-executable"></a>

## B.2 Step 6 — Making the Scripts Executable

The mapper and reducer were given execution permissions.

```bash
chmod +x total_sentences_mapper.py
chmod +x total_sentences_reducer.py
ls -l
```

The output verified that execution permissions had been granted.

---

<a name="b2-step-7--testing-with-echo"></a>

## B.2 Step 7 — Testing with Echo

Before uploading the book to Hadoop, the mapper and reducer were tested locally.

The first required statement was:

```text
Hello! Welcome to Page Turner Books Ltd.
```

It was tested with:

```bash
echo "Hello! Welcome to Page Turner Books Ltd." | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

The second required statement was:

```text
Page Turner Books? Well, we are a great company!
```

It was tested with:

```bash
echo "Page Turner Books? Well, we are a great company!" | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

This validation step was important because it tested the mapper and reducer before deploying the full dataset to Hadoop.

The local testing:

- verified sentence detection;
- verified reducer aggregation;
- reduced the likelihood of Hadoop execution errors;
- confirmed that the scripts produced the expected type of output before distributed processing.

---

<a name="b2-step-8--creating-the-hdfs-directory"></a>

## B.2 Step 8 — Creating the HDFS Directory

An HDFS directory was created for the Moby Dick task.

```bash
hdfs dfs -mkdir -p /user/ubong-etok
hadoop fs -mkdir MobyDick_Sentences
hadoop fs -ls
```

This created a hierarchical storage location for the input and output.

---

<a name="b2-step-9--uploading-the-file"></a>

## B.2 Step 9 — Uploading the File

The dataset was renamed to a Hadoop-friendly filename and uploaded.

```bash
mv *Whale* Moby_Dick_or_The_Whale.txt

hadoop fs -put Moby_Dick_or_The_Whale.txt /user/ubong-etok/MobyDick_Sentences/
```

The file was therefore transferred from the Ubuntu local filesystem into HDFS.

---

<a name="b2-step-10--confirming-the-upload"></a>

## B.2 Step 10 — Confirming the Upload

The HDFS directory was inspected.

```bash
hadoop fs -ls /user/ubong-etok/MobyDick_Sentences/
```

This confirmed that the Moby Dick input file had been transferred successfully and was available to Hadoop.

---

<a name="b2-step-11--running-hadoop-streaming"></a>

## B.2 Step 11 — Running Hadoop Streaming

The sentence mapper and reducer were executed through Hadoop Streaming.

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B2/total_sentences_mapper.py,/home/ubong-etok/Question2_Task_B2/total_sentences_reducer.py \
-mapper "python3 total_sentences_mapper.py" \
-reducer "python3 total_sentences_reducer.py" \
-input /user/ubong-etok/MobyDick_Sentences/Moby_Dick_or_The_Whale.txt \
-output /user/ubong-etok/MobyDick_Sentences/output
```

Hadoop distributed the processing job across the cluster.

The mapper identified sentence boundaries and generated individual sentence counts. The reducer then merged those counts into one total.

---

<a name="b2-step-12--copying-the-output-to-ubuntu"></a>

## B.2 Step 12 — Copying the Output to Ubuntu

The generated Hadoop output was copied from HDFS back into the local Ubuntu filesystem.

```bash
hdfs dfs -get /user/ubong-etok/MobyDick_Sentences/output ./output
```

This made the generated result available for inspection.

---

<a name="b2-step-13--checking-the-output-files"></a>

## B.2 Step 13 — Checking the Output Files

The output directory was inspected.

```bash
ls output
```

The presence of the Hadoop output and `_SUCCESS` marker validated successful job completion.

The technical report refers to the generated result file as `part-000000` in its description, while the subsequent command used to open the output is `part-00000`.

---

<a name="b2-step-14--viewing-the-output"></a>

## B.2 Step 14 — Viewing the Output

The generated output was opened using:

```bash
cat output/part-00000
```

This displayed the final aggregated sentence count.

---

<a name="b2-step-15--identifying-the-final-sentence-count"></a>

## B.2 Step 15 — Identifying the Final Sentence Count

The final output represents the total number of sentences detected within *Moby Dick; Or, The Whale*.

The analysis produced:

```text
Total Sentences    10941
```

This provides a basic numerical measure of the size and complexity of the literary text and demonstrates how Hadoop can be used to process a large unstructured text dataset.

---

<a name="b2-result"></a>

## 📊 B.2 Result

### Final Sentence Count

**10,941 sentences**

The mapper detected sentence-ending punctuation and emitted one record per detected sentence.

The reducer aggregated the records and produced one final total.

---

<a name="b2-conclusion"></a>

## B.2 Conclusion

The Hadoop MapReduce sentence-count task demonstrates how *Moby Dick; Or, The Whale* can be processed as an unstructured text file and converted into structured numerical output.

The workflow consisted of:

- preparing the mapper and reducer;
- testing them locally;
- uploading the dataset to HDFS;
- running the Hadoop Streaming job;
- retrieving the output;
- inspecting the final count.

The mapper recognised sentence boundaries while the reducer summed the counts to produce the final total of **10,941 sentences**.

The result confirms that Hadoop efficiently processed the unstructured text file and generated structured output.

This approach could be extended to assess book complexity and support reading-level classification, recommendation systems and targeted marketing to advanced readers.

---

<a name="validation-and-verification"></a>

## 🔍 Validation and Verification

Validation was performed throughout the workflow rather than only at the end.

### Local filesystem validation

`ls` was repeatedly used after directory and file operations.

### File-content validation

`cat` was used to inspect:

- `store_info.md`;
- Hadoop output files.

### Hadoop process validation

`jps` was used on both master and worker machines.

### HDFS validation

`hadoop fs -ls` and `hdfs dfs -ls` were used to verify HDFS directories and uploaded files.

### Hadoop job validation

The `_SUCCESS` marker was checked after Hadoop Streaming jobs.

### B.2 local validation

The two required sample statements were passed through:

```text
echo → mapper → reducer
```

before the full Moby Dick dataset was processed.

### Result validation

The word-frequency output was independently ranked with:

```bash
sort -k2 -nr output/part-00000 | head -10
```

The Moby Dick sentence count was inspected directly with:

```bash
cat output/part-00000
```

---

<a name="key-findings"></a>

## 📌 Key Findings

### Word Frequency

The ten most frequent terms in *A Christmas Carol* were:

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

### Sentence Count

*Moby Dick; Or, The Whale* produced:

```text
Total Sentences    10941
```

### Engineering Finding

Both workflows successfully converted unstructured literary text into structured output through the MapReduce pattern.

---

<a name="business-interpretation"></a>

## 💼 Business Interpretation

### Word Frequency — Marketing and Writing Style

Word-frequency analysis provides a basic way to identify recurring vocabulary within a book.

For a larger catalogue, similar processing could be used to identify recurring terms, themes or keyword patterns that could contribute to:

- targeted marketing keywords;
- book descriptions;
- catalogue analysis;
- literary-style comparison;
- recommendation features.

### Sentence Count — Complexity and Recommendations

Sentence count provides a simple numerical feature describing a book's textual scale.

For PageTurner Books Ltd., comparable features across many books could contribute to:

- reading-level classification;
- identification of longer texts;
- recommendation systems;
- targeting advanced readers;
- book-complexity analysis.

These are potential applications of the demonstrated workflow rather than production recommendation results.

---

<a name="limitations"></a>

## ⚠️ Limitations

### Word Frequency

The word-frequency workflow counts individual alphabetic words after converting them to lowercase.

Consequently, common grammatical words such as `the`, `and`, `of` and `a` dominate the top of the output.

A more advanced NLP implementation could incorporate stop-word removal, stemming or lemmatisation depending on the analytical objective.

### Sentence Detection

The sentence mapper uses:

```python
re.findall(r'[.!?]+', line)
```

This is a straightforward rule-based method.

Literary text can contain abbreviations, quotations and punctuation conventions that may not always correspond perfectly to sentence boundaries.

Therefore, the 10,941 result should be interpreted as the number of sentence-ending punctuation sequences detected by the implemented rule.

### Environment-Specific Paths

The Hadoop Streaming commands contain the original Ubuntu username and installation path:

```text
/home/ubong-etok/
```

and:

```text
/usr/local/hadoop/
```

These paths may need to be changed in another environment.

### Scope

The project demonstrates two focused distributed text-processing tasks. It does not represent a complete production-scale book recommendation or marketing system.

---

<a name="visual-evidence"></a>

## 🖼️ Visual Evidence

The project includes screenshots extracted from the technical-report evidence. The original technical reports themselves are intentionally **not included** in the repository or release.

### Question 1 Evidence

![Question 1 Page 1](documentation/screenshots/question1_page_01_image_01.jpeg)

![Question 1 Page 2](documentation/screenshots/question1_page_02_image_01.jpeg)

![Question 1 Page 3](documentation/screenshots/question1_page_03_image_01.jpeg)

![Question 1 Page 4](documentation/screenshots/question1_page_04_image_01.jpeg)

![Question 1 Page 5](documentation/screenshots/question1_page_05_image_01.jpeg)

### Question 2 Evidence

The complete screenshot evidence is available as a downloadable release package:

**[⬇️ Download all implementation screenshots](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/hadoop_distributed_text_analytics_screenshots.zip)**

The screenshot package contains the extracted evidence from the Question 2 technical-report pages, including:

- Hadoop service startup;
- master/worker verification;
- working-directory creation;
- dataset preparation;
- mapper and reducer creation;
- executable permissions;
- HDFS directories;
- HDFS uploads;
- Hadoop Streaming execution;
- output verification;
- output retrieval;
- complete word-frequency results;
- top-ten ranking;
- sentence-count testing;
- final sentence-count output.

---

<a name="repository-structure"></a>

## 📂 Repository Structure

```text
hadoop-distributed-text-analytics/
│
├── README.md
│
├── code/
│   ├── word_count_mapper.py
│   ├── word_count_reducer.py
│   ├── total_sentences_mapper.py
│   ├── total_sentences_reducer.py
│   ├── question1_bash_commands.sh
│   ├── question2_b1_word_frequency_commands.sh
│   ├── question2_b2_sentence_count_commands.sh
│   └── hadoop_distributed_text_analytics_batch_commands.txt
│
├── data/
│   ├── A_Christmas_Carol.txt
│   └── Moby_Dick_or_The_Whale.txt
│
├── results/
│   ├── word_frequency_top10.txt
│   └── moby_dick_sentence_count.txt
│
└── documentation/
    └── screenshots/
        ├── Question 1 evidence
        └── Question 2 evidence
```

The technical reports themselves are deliberately excluded.

---

<a name="reproducibility"></a>

## ♻️ Reproducibility

### 1. Prepare Ubuntu

Use an Ubuntu environment with Hadoop configured as a master/worker cluster.

### 2. Start Hadoop

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

### 3. Prepare the datasets

Place:

```text
A_Christmas_Carol.txt
Moby_Dick_or_The_Whale.txt
```

in the local working environment.

### 4. Prepare the scripts

Use:

```text
word_count_mapper.py
word_count_reducer.py
total_sentences_mapper.py
total_sentences_reducer.py
```

### 5. Make the scripts executable

```bash
chmod +x word_count_mapper.py
chmod +x word_count_reducer.py
chmod +x total_sentences_mapper.py
chmod +x total_sentences_reducer.py
```

### 6. Test B.2 locally

```bash
echo "Hello! Welcome to Page Turner Books Ltd." | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

```bash
echo "Page Turner Books? Well, we are a great company!" | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

### 7. Upload datasets to HDFS

Follow the B.1 and B.2 command sequences documented above or use the supplied command files.

### 8. Run Hadoop Streaming

Use the Hadoop Streaming commands supplied in:

```text
code/question2_b1_word_frequency_commands.sh
code/question2_b2_sentence_count_commands.sh
```

### 9. Inspect outputs

Use:

```bash
cat output/part-00000
```

and, for B.1:

```bash
sort -k2 -nr output/part-00000 | head -10
```

---

<a name="project-files"></a>

## 📂 Project Files

The complete project files are available through the GitHub release assets.

### 🐍 Word Frequency Mapper

The Python mapper used for *A Christmas Carol*.

**[⬇️ Download `word_count_mapper.py`](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/word_count_mapper.py)**

### 🐍 Word Frequency Reducer

The Python reducer used for *A Christmas Carol*.

**[⬇️ Download `word_count_reducer.py`](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/word_count_reducer.py)**

### 🐍 Sentence Count Mapper

The Python mapper used for *Moby Dick; Or, The Whale*.

**[⬇️ Download `total_sentences_mapper.py`](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/total_sentences_mapper.py)**

### 🐍 Sentence Count Reducer

The Python reducer used for *Moby Dick; Or, The Whale*.

**[⬇️ Download `total_sentences_reducer.py`](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/total_sentences_reducer.py)**

### 🐧 Question 1 Bash Commands

The complete Bash command sequence for the PageTurner Books directory structure.

**[⬇️ Download Question 1 Bash Commands](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/question1_bash_commands.sh)**

### 📚 B.1 Word Frequency Commands

The complete Hadoop command sequence for the *A Christmas Carol* workflow.

**[⬇️ Download B.1 Commands](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/question2_b1_word_frequency_commands.sh)**

### 📖 B.2 Sentence Count Commands

The complete Hadoop command sequence for the *Moby Dick* workflow.

**[⬇️ Download B.2 Commands](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/question2_b2_sentence_count_commands.sh)**

### 📄 Complete Batch Command Reference

**[⬇️ Download Complete Command Reference](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/hadoop_distributed_text_analytics_batch_commands.txt)**

### 📚 A Christmas Carol Dataset

**[⬇️ Download A Christmas Carol Dataset](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/A_Christmas_Carol.txt)**

### 📖 Moby Dick Dataset

**[⬇️ Download Moby Dick Dataset](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/Moby_Dick_or_The_Whale.txt)**

### 📊 Top 10 Word Frequencies

**[⬇️ Download Top 10 Results](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/word_frequency_top10.txt)**

### 🔢 Sentence Count Result

**[⬇️ Download Sentence Count Result](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/moby_dick_sentence_count.txt)**

### 📦 Complete Project Package

The complete implementation package contains the code, datasets, command files and results, but intentionally excludes the original technical reports.

**[⬇️ Download Complete Project Files](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/hadoop_distributed_text_analytics_project_files.zip)**

---

<a name="release"></a>

## 🚀 Release

### Hadoop Distributed Text Analytics v1.0.0

The release is intended to provide a downloadable version of the project implementation.

**[🔗 View Hadoop Distributed Text Analytics v1.0.0 Release](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/tag/hadoop-distributed-text-analytics-v1.0.0)**

**[⬇️ Download Complete Project Package](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/hadoop_distributed_text_analytics_project_files.zip)**

**[⬇️ Download Screenshot Evidence Package](https://github.com/xzibitetok/hadoop-distributed-text-analytics/releases/latest/download/hadoop_distributed_text_analytics_screenshots.zip)**

GitHub supports direct links to assets in the latest release using the `/releases/latest/download/<asset-name>` pattern.

---

<a name="references"></a>

## 📚 References

### Apache Hadoop

Apache Hadoop (2025). *Hadoop Documentation*.

https://hadoop.apache.org/docs/

### MapReduce

Dean, J. and Ghemawat, S. (2008). “MapReduce: Simplified Data Processing on Large Clusters.” *Communications of the ACM*, 51(1), pp. 107–113.

### Bash

Free Software Foundation (2025). *Bash Reference Manual*. GNU Operating System.

https://www.gnu.org/software/bash/manual/bash.html

### Big Data Engineering

Griffiths, I. (2026a). *MS4S21 Big Data Engineering and its Applications — Lecture 1*. University of South Wales.

Griffiths, I. (2026b). *MS4S21 Big Data Engineering and its Applications — Lecture 2*. University of South Wales.

Griffiths, I. (2026). *MS4S21 Big Data Engineering and its Applications — Lecture 3 & 4*. University of South Wales.

### Source Texts

Project Gutenberg. *A Christmas Carol* by Charles Dickens.

Project Gutenberg. *Moby Dick; Or, The Whale* by Herman Melville.

### AI-Assisted Development

AI assistance was used specifically to support the development of:

- `total_sentences_mapper.py`
- `total_sentences_reducer.py`

The resulting scripts were then tested locally and executed through Hadoop Streaming.

---

<a name="author"></a>

## 👤 Author

# Ubong Etok

**MSc Data Science | Data Analytics | Business Intelligence | SQL | Machine Learning**

I develop data-driven solutions combining data engineering, analytics, machine learning and business-oriented interpretation to transform complex datasets into practical insights.

### 🔗 Connect

- GitHub: [**@xzibitetok**](https://github.com/xzibitetok)
- Portfolio: [**xzibitetok.github.io**](https://xzibitetok.github.io)

---

## ⭐ Project Highlights

This project demonstrates practical experience in:

- Linux and Bash command-line operations
- Ubuntu system administration
- File and directory management
- Hadoop distributed computing
- HDFS distributed storage
- YARN resource management
- MapReduce processing
- Hadoop Streaming
- Python mapper/reducer development
- Local pipeline testing
- Distributed text analytics
- Structured result generation
- Reproducible technical workflows

**Ubuntu → Bash → HDFS → YARN → MapReduce → Python Streaming → Text Analytics → Structured Results**
