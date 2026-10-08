# 🐘 Hadoop Distributed Text Analytics

![Hadoop](https://img.shields.io/badge/Apache%20Hadoop-Distributed%20Computing-66CCFF?logo=apachehadoop&logoColor=black)
![HDFS](https://img.shields.io/badge/HDFS-Distributed%20Storage-1f77b4)
![YARN](https://img.shields.io/badge/YARN-Resource%20Management-orange)
![MapReduce](https://img.shields.io/badge/MapReduce-Distributed%20Processing-red)
![Python](https://img.shields.io/badge/Python-Mapper%20%7C%20Reducer-3776AB?logo=python)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Linux-E95420?logo=ubuntu&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-Command%20Line-4EAA4A?logo=gnubash&logoColor=white)
![Reproducible](https://img.shields.io/badge/Workflow-Reproducible-lightgrey)

> An end-to-end Big Data Engineering implementation completed in Ubuntu using Bash, Apache Hadoop, HDFS, YARN, Hadoop Streaming, MapReduce and Python. The project fulfils the PageTurner Books Ltd. assessment requirements by creating a command-line book-data storage structure, explaining Hadoop architecture, performing word-frequency analysis on *A Christmas Carol*, and calculating the total number of sentences in *Moby Dick; Or, The Whale*.

---

## 📑 Table of Contents

1. [Project Overview](#-project-overview)
2. [Assessment Requirements and Coverage](#-assessment-requirements-and-coverage)
3. [End-to-End Ubuntu Workflow](#-end-to-end-ubuntu-workflow)
4. [Technology Stack](#-technology-stack)
5. [Question 1 — Bash and PageTurner Books Storage](#-question-1--bash-and-pageturner-books-storage)
   - [Task A — Bash Explanation](#task-a--bash-explanation)
   - [Task B — Directory and File Implementation](#task-b--directory-and-file-implementation)
6. [Question 2 — Hadoop Architecture and Distributed Analytics](#-question-2--hadoop-architecture-and-distributed-analytics)
   - [Task A — Hadoop Architecture](#task-a--hadoop-architecture)
   - [Task B.1 — Word Frequency Count](#task-b1--word-frequency-count-a-christmas-carol)
   - [Task B.2 — Total Sentence Count](#task-b2--total-sentence-count-moby-dick)
7. [Validation and Verification](#-validation-and-verification)
8. [Final Results and Business Interpretation](#-final-results-and-business-interpretation)
9. [Assessment Evidence and Screenshots](#-assessment-evidence-and-screenshots)
10. [Repository Structure](#-repository-structure)
11. [Reproducibility](#-reproducibility)
12. [Implementation Notes and Limitations](#-implementation-notes-and-limitations)
13. [References](#-references)
14. [Author](#-author)

---

# 📌 Project Overview

PageTurner Books Ltd. is an independent online bookstore whose rapid growth created a need for a more organised technical infrastructure. The assessment required the implementation of a Linux/Bash-based storage structure followed by Hadoop-based Big Data processing.

The work was completed from start to finish through the **Ubuntu terminal**, rather than through a graphical file manager for the required storage operations.

The complete implementation can be represented as:

```text
Ubuntu
  ↓
Bash / Linux Command Line
  ↓
PageTurnerBooks Storage Structure
  ↓
Hadoop Master + Worker Cluster
  ↓
HDFS Distributed Storage
  ↓
YARN Resource Management
  ↓
Hadoop MapReduce / Streaming
  ↓
Python Mapper + Reducer
  ↓
Distributed Text Processing
  ↓
HDFS Output
  ↓
Ubuntu Local Output
  ↓
Validation / Ranking / Final Results
```

Two analytical workloads were implemented:

1. **B.1 — Word Frequency Analysis:** count word occurrences in *A Christmas Carol* and identify the top 10 most frequent words.
2. **B.2 — Sentence Count Analysis:** determine the total number of sentences in *Moby Dick; Or, The Whale*.

The resulting workflow demonstrates both foundational Linux command-line skills and practical distributed text processing.

---

# 🎯 Assessment Requirements and Coverage

The assessment brief contains **Question 1 (15 marks)** and **Question 2 (25 marks)**. The implementation below addresses the technical and written requirements of both questions.

| Assessment Requirement | How it was addressed |
|---|---|
| Q1 Task A — Explain Bash and its history | Bash is explained as Bourne Again Shell, its GNU/Bourne Shell background is described, and its role in Linux/Ubuntu is discussed. |
| Q1 Task A — Compare Bash with GUI | Bash and GUI approaches are compared in terms of direct control, repeatability, automation and resource usage. |
| Q1 Task A — Explain `mkdir` | Used to create `PageTurnerBooks` and its subdirectories. |
| Q1 Task A — Explain `cd` | Used to navigate between the home directory, PageTurnerBooks and inventory. |
| Q1 Task A — Explain `touch` | Used to create the required empty files. |
| Q1 Task A — Explain `cp` | Used to copy `bestsellers.txt` into `reviews` while retaining the original. |
| Q1 Task A — Explain `echo` | Used to write the PageTurner Books company description to `store_info.md`. |
| Q1 Task A — Explain `ls` | Used repeatedly to verify directories and files. |
| Q1 Task B — Create `PageTurnerBooks` | Created in the Ubuntu home directory. |
| Q1 Task B — Create five subdirectories | `inventory`, `customer`, `orders`, `reviews`, and `library` were created. |
| Q1 Task B — Create inventory files | `book_catalog.csv` and `bestsellers.txt` were created as empty files. |
| Q1 Task B — Copy bestseller file | `bestsellers.txt` was copied from `inventory` to `reviews`. |
| Q1 Task B — Create company information | `store_info.md` was created and populated. |
| Q2 Task A — HDFS | Role and functionality explained as the distributed storage layer. |
| Q2 Task A — MapReduce | Role and processing flow explained for both analytical tasks. |
| Q2 Task A — YARN | Resource management and job execution explained. |
| Q2 Task A — Hadoop Common | Shared Hadoop libraries and utilities explained. |
| Q2 Task A — Explain how components work together | The complete HDFS → YARN → MapReduce workflow is described. |
| Q2 B.1 — Create word mapper | `word_count_mapper.py` created. |
| Q2 B.1 — Create word reducer | `word_count_reducer.py` created. |
| Q2 B.1 — Upload book to Hadoop | *A Christmas Carol* uploaded to HDFS. |
| Q2 B.1 — Run mapper/reducer | Hadoop Streaming job executed across the cluster. |
| Q2 B.1 — Identify top 10 words | Output ranked with `sort -k2 -nr ... | head -10`. |
| Q2 B.2 — Create sentence mapper | `total_sentences_mapper.py` created. |
| Q2 B.2 — Create sentence reducer | `total_sentences_reducer.py` created. |
| Q2 B.2 — Use permitted AI assistance | AI was used specifically for development of the two B.2 Python files, as permitted by the brief. |
| Q2 B.2 — Test before Hadoop execution | Required sample sentences were tested locally using `echo` and the mapper/reducer pipeline. |
| Q2 B.2 — Upload book to Hadoop | *Moby Dick; Or, The Whale* was uploaded to HDFS. |
| Q2 B.2 — Calculate total sentences | Hadoop Streaming produced the final sentence count. |
| Documentation requirement | Commands, implementation stages, validation and screenshot evidence are represented in this repository. |

---

# 🔄 End-to-End Ubuntu Workflow

The implementation was deliberately carried out as a continuous Ubuntu-based workflow.

```text
1. Open Ubuntu virtual machine
        ↓
2. Use Bash terminal
        ↓
3. Learn/apply Bash commands
        ↓
4. Build PageTurnerBooks directory
        ↓
5. Create and organise business files
        ↓
6. Start Hadoop on master
        ↓
7. Verify master and worker services
        ↓
8. Create B.1 working environment
        ↓
9. Prepare A Christmas Carol
        ↓
10. Create and permission mapper/reducer
        ↓
11. Create HDFS input directory
        ↓
12. Upload book to HDFS
        ↓
13. Execute Hadoop Streaming
        ↓
14. Verify HDFS output
        ↓
15. Retrieve and inspect word frequencies
        ↓
16. Rank top 10 words
        ↓
17. Create B.2 working environment
        ↓
18. Prepare Moby Dick
        ↓
19. Create and permission sentence mapper/reducer
        ↓
20. Test mapper/reducer locally with echo
        ↓
21. Create HDFS directory
        ↓
22. Upload Moby Dick to HDFS
        ↓
23. Execute Hadoop Streaming
        ↓
24. Verify and retrieve output
        ↓
25. Inspect final sentence count
```

---

# 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| **Ubuntu Linux** | Operating environment for the complete implementation |
| **Bash** | Command-line interaction, directory/file management and execution |
| **Apache Hadoop** | Big Data processing framework |
| **HDFS** | Distributed storage for input books and generated outputs |
| **YARN** | Cluster resource management and job execution |
| **MapReduce** | Distributed data-processing model |
| **Hadoop Streaming** | Allows Python programs to operate as Hadoop mapper/reducer programs |
| **Python 3** | Mapper and reducer implementation |
| **GNU/Linux utilities** | `ls`, `cat`, `sort`, `head`, `chmod`, `mv`, `echo`, etc. |
| **VirtualBox** | Virtualised master/worker environment |

---

# 🐧 Question 1 — Bash and PageTurner Books Storage

## Task A — Bash Explanation

### What is Bash?

**Bash (Bourne Again Shell)** is a command-line shell and scripting language widely used in Unix and Linux environments such as Ubuntu. It provides an interface through which users communicate directly with the operating system by entering commands in a terminal.

Bash was developed through the GNU Project as a replacement for the original Bourne Shell and became a standard command interpreter in Linux environments.

Bash is particularly useful in technical and Big Data environments because commands can be executed precisely, repeated consistently, combined into pipelines and incorporated into scripts.

### Bash in Linux

Bash provides direct system-level interaction for tasks such as:

- creating and managing directories;
- creating, copying and inspecting files;
- navigating the filesystem;
- setting permissions;
- executing programs and scripts;
- combining commands into repeatable workflows; and
- supporting technical environments where command-line control is important.

### Bash versus GUI

A graphical user interface uses icons, windows and menus. Bash instead provides direct command-line access.

For this assessment, Bash was appropriate because the required PageTurner Books storage system had to be created using **Bash commands only**, rather than a GUI file manager.

| Bash | GUI |
|---|---|
| Direct command-line control | Visual interaction through windows/icons |
| Highly repeatable | Often more manual |
| Commands can be scripted and automated | Automation is generally less direct |
| Efficient for technical workflows | Often easier for beginners |
| Well suited to Linux/server environments | Convenient for general desktop tasks |

### Required Bash Commands

| Command | Function | Use in this project |
|---|---|---|
| `mkdir` | Creates directories | Created `PageTurnerBooks` and its five subdirectories |
| `cd` | Changes directory | Navigated through the Ubuntu filesystem |
| `touch` | Creates empty files | Created `book_catalog.csv`, `bestsellers.txt` and `store_info.md` |
| `cp` | Copies files | Copied `bestsellers.txt` to `reviews` |
| `echo` | Outputs/writes text | Added the company description to `store_info.md` |
| `ls` | Lists files/directories | Verified that the required structure and files existed |

Additional commands used during the Hadoop stage included `cat`, `chmod`, `sort`, `head`, `mv` and `jps`.

---

## Task B — Directory and File Implementation

All required storage operations were completed from the Ubuntu terminal.

### Step 1 — Create `PageTurnerBooks`

```bash
cd ~
mkdir PageTurnerBooks
ls
```

The home directory was selected so that `PageTurnerBooks` became the main business-data directory.

### Step 2 — Create the five required subdirectories

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

The directories represent:

- `inventory` — book catalogue and stock files;
- `customer` — customer data and profiles;
- `orders` — purchase records and transactions;
- `reviews` — customer reviews and ratings;
- `library` — raw files representing the available books.

### Step 3 — Create the two required inventory files

```bash
cd inventory

touch book_catalog.csv
touch bestsellers.txt

ls
```

The two files were created as empty files as required by the assessment.

### Step 4 — Copy `bestsellers.txt` to `reviews`

```bash
cp bestsellers.txt ../reviews/

ls
ls ../reviews/
```

This retained the original file inside `inventory` while creating a copy inside `reviews`.

### Step 5 — Create and populate `store_info.md`

```bash
cd ..

touch store_info.md

echo "PageTurner Books Ltd is an independent bookstore based in Manchester specializing in fiction, non-fiction, and rare books." > store_info.md

cat store_info.md
```

The `cat` command was used to verify that the company information had been written successfully.

---

# 🐘 Question 2 — Hadoop Architecture and Distributed Analytics

## Task A — Hadoop Architecture

The assessment required the role and functionality of four Hadoop components to be explained and their interaction to be described.

### HDFS — Hadoop Distributed File System

HDFS provided the **distributed storage layer** for the implementation.

The book datasets were moved from the Ubuntu local filesystem into HDFS so that Hadoop could access them as cluster inputs. Generated analytical outputs were also stored in HDFS.

### MapReduce

MapReduce provided the **distributed processing model**.

For word frequency:

```text
A Christmas Carol
       ↓
    Mapper
       ↓
word → 1
       ↓
Shuffle / Sort
       ↓
   Reducer
       ↓
word → frequency
```

For sentence counting:

```text
Moby Dick
    ↓
 Mapper
    ↓
sentence → 1
    ↓
Shuffle / Sort
    ↓
 Reducer
    ↓
Total sentence count
```

### YARN — Yet Another Resource Negotiator

YARN provided resource management and job execution for the Hadoop Streaming workloads.

It coordinated the resources required for the distributed jobs running across the Hadoop environment.

### Hadoop Common

Hadoop Common provides shared libraries and utilities used throughout the Hadoop ecosystem. In this implementation, the Hadoop installation provided the supporting utilities and libraries required for HDFS, YARN and Hadoop Streaming.

### How the components worked together

```text
Ubuntu / Bash
      ↓
     HDFS
Distributed Storage
      ↓
     YARN
Resource Management
      ↓
  MapReduce
      ↓
Mapper → Shuffle/Sort → Reducer
      ↓
Structured Analytical Output
```

This architecture allowed unstructured book text to be transformed into structured analytical results.

---

# 📚 Task B.1 — Word Frequency Count: *A Christmas Carol*

## Objective

The objective was to count the occurrences of every word in *A Christmas Carol* using the Hadoop cluster and identify the **10 most frequent words**.

The business purpose was to provide a text profile that could support targeted marketing keywords and analysis of Charles Dickens' writing style.

---

## Step 1 — Start Hadoop and verify the cluster

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

The Java process lists were checked to verify the Hadoop services required by the cluster, including:

- NameNode
- SecondaryNameNode
- DataNode
- ResourceManager
- NodeManager

This confirmed that the master and worker environment was ready for processing.

---

## Step 2 — Create the B.1 working directory

```bash
cd ~
mkdir Question2_Task_B1
cd Question2_Task_B1
pwd
```

The working directory kept the B.1 input file, Python scripts and generated outputs organised in one location.

---

## Step 3 — Copy the book into the local working directory

```bash
cp ~/Downloads/"A Christmas Carol.txt" .
ls
```

The `ls` command verified that the dataset was available locally before Hadoop processing.

---

## Step 4 — Create the word mapper

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

### Mapper operation

The mapper:

1. reads the input line by line;
2. removes surrounding whitespace;
3. converts text to lowercase;
4. extracts alphabetic word sequences using a regular expression;
5. emits each word with the value `1`.

Example intermediate output:

```text
the     1
book    1
the     1
```

These key/value pairs are then processed by Hadoop's shuffle/sort stage.

---

## Step 5 — Create the word reducer

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

### Reducer operation

The reducer receives grouped key/value pairs from Hadoop and aggregates repeated word keys into their total frequencies.

---

## Step 6 — Make the scripts executable

```bash
chmod +x word_count_mapper.py
chmod +x word_count_reducer.py
ls -l
```

The execution permissions allowed Hadoop Streaming to run the Python scripts.

---

## Step 7 — Create the HDFS directory

```bash
hadoop fs -mkdir /user/ubong-etok/WordCount_ChristmasCarol
hadoop fs -ls /user/ubong-etok
```

The HDFS directory provided a dedicated distributed-storage location for the input file and generated output.

---

## Step 8 — Upload *A Christmas Carol* to HDFS

```bash
hadoop fs -put A_Christmas_Carol.txt /user/ubong-etok/WordCount_ChristmasCarol/
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol
```

The HDFS listing verified that the book had been uploaded successfully.

---

## Step 9 — Run Hadoop Streaming

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B1/word_count_mapper.py,/home/ubong-etok/Question2_Task_B1/word_count_reducer.py \
-mapper "python3 word_count_mapper.py" \
-reducer "python3 word_count_reducer.py" \
-input /user/ubong-etok/WordCount_ChristmasCarol/A_Christmas_Carol.txt \
-output /user/ubong-etok/WordCount_ChristmasCarol/output
```

Hadoop Streaming integrated the Python mapper and reducer with the Hadoop MapReduce framework.

The processing sequence was:

```text
Input Text
   ↓
Python Mapper
   ↓
word → 1
   ↓
Hadoop Shuffle / Sort
   ↓
Python Reducer
   ↓
Word Frequencies
```

---

## Step 10 — Verify successful Hadoop output

```bash
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol/output
```

The output directory contained the Hadoop result file and the `_SUCCESS` marker.

The presence of `_SUCCESS` confirmed successful completion of the Hadoop job.

---

## Step 11 — Retrieve the Hadoop output to Ubuntu

```bash
hadoop fs -get /user/ubong-etok/WordCount_ChristmasCarol/output
ls output
```

The result was transferred from HDFS back to the Ubuntu filesystem so that it could be inspected and ranked using Linux commands.

---

## Step 12 — View the complete word-frequency output

```bash
cat output/part-00000
```

`part-00000` contained the processed word-frequency results.

---

## Step 13 — Identify the top 10 words

```bash
sort -k2 -nr output/part-00000 | head -10
```

The output was sorted by the numerical frequency field in descending order and restricted to the first ten records.

### Final Top 10

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

### B.1 Interpretation

The analysis converted an unstructured literary document into structured frequency data. The dominant vocabulary provides a basic textual profile that could support:

- keyword-oriented marketing;
- comparison of books;
- literary-style analysis; and
- future text analytics across a larger catalogue.

The workflow also demonstrates that the Hadoop architecture can process a literary dataset and produce a structured result stored in HDFS.

---

# 📖 Task B.2 — Total Sentence Count: *Moby Dick*

## Objective

The objective was to calculate the total number of sentences in *The Moby Dick or The Whale* using Hadoop MapReduce.

The business motivation was to use textual scale as a potential indicator for longer or more complex books that may be suitable for advanced readers.

---

## Step 1 — Start Hadoop and verify both machines

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

The Hadoop processes were checked before processing to ensure that the cluster was operational.

---

## Step 2 — Create the B.2 working directory

```bash
cd ~
mkdir Question2_Task_B2
cd Question2_Task_B2
ls
```

This created a dedicated location for the B.2 scripts, input dataset and output.

---

## Step 3 — Copy the Moby Dick dataset locally

```bash
cp ~/Downloads/"Moby Dick or The Whale.txt" .
ls
```

The `ls` command verified that the dataset was present in the working directory.

---

## Step 4 — Create the sentence mapper

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

### Mapper operation

The mapper reads the text line by line and searches for sentence-ending punctuation:

```text
.
!
?
```

For every detected sentence boundary, it emits:

```text
sentence    1
```

The result is therefore a series of countable sentence records.

---

## Step 5 — Create the sentence reducer

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

### Reducer operation

The reducer receives the sentence records and adds their count values together to produce one final total.

---

## Step 6 — Make the B.2 scripts executable

```bash
chmod +x total_sentences_mapper.py
chmod +x total_sentences_reducer.py
ls -l
```

This allowed Hadoop Streaming to execute the mapper and reducer.

---

## Step 7 — Test the mapper and reducer locally

The assessment specifically required the mapper and reducer to be tested **before** uploading the full book to Hadoop.

The first required test statement was:

```bash
echo "Hello! Welcome to Page Turner Books Ltd." | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

The second required test statement was:

```bash
echo "Page Turner Books? Well, we are a great company!" | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

These tests validated the sentence-detection and aggregation logic before deployment to the Hadoop cluster.

This was an important validation stage because it reduced the risk of discovering basic script errors only after launching the distributed job.

### AI-use requirement

The assessment explicitly permitted AI assistance for the creation of:

- `total_sentences_mapper.py`
- `total_sentences_reducer.py`

AI assistance was therefore restricted to these two B.2 files, consistent with the assessment brief. The scripts were then locally tested and executed through Hadoop Streaming.

---

## Step 8 — Create the HDFS directory

```bash
hdfs dfs -mkdir -p /user/ubong-etok
hadoop fs -mkdir MobyDick_Sentences
hadoop fs -ls
```

The HDFS directory provided a dedicated location for the Moby Dick input and generated output.

---

## Step 9 — Rename and upload the dataset

The input filename was standardised before uploading:

```bash
mv *Whale* Moby_Dick_or_The_Whale.txt
```

The renamed dataset was then uploaded:

```bash
hadoop fs -put Moby_Dick_or_The_Whale.txt /user/ubong-etok/MobyDick_Sentences/
```

---

## Step 10 — Verify the HDFS upload

```bash
hadoop fs -ls /user/ubong-etok/MobyDick_Sentences/
```

The listing verified that the Moby Dick dataset was available in HDFS for Hadoop processing.

---

## Step 11 — Run Hadoop Streaming

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B2/total_sentences_mapper.py,/home/ubong-etok/Question2_Task_B2/total_sentences_reducer.py \
-mapper "python3 total_sentences_mapper.py" \
-reducer "python3 total_sentences_reducer.py" \
-input /user/ubong-etok/MobyDick_Sentences/Moby_Dick_or_The_Whale.txt \
-output /user/ubong-etok/MobyDick_Sentences/output
```

The Hadoop workflow was:

```text
Moby Dick Text
      ↓
Sentence Mapper
      ↓
sentence → 1
      ↓
Shuffle / Sort
      ↓
Sentence Reducer
      ↓
Total Sentences
```

---

## Step 12 — Retrieve the output to Ubuntu

```bash
hdfs dfs -get /user/ubong-etok/MobyDick_Sentences/output ./output
```

The generated Hadoop result was copied from HDFS to the Ubuntu local filesystem.

---

## Step 13 — Check the output files

```bash
ls output
```

The output directory contained the Hadoop result and `_SUCCESS` marker.

The report evidence recorded the presence of the result file and success marker as confirmation that the job completed.

---

## Step 14 — View the final output

```bash
cat output/part-00000
```

This displayed the final sentence-count result generated by Hadoop.

---

## Step 15 — Final sentence count

The final result was:

```text
Total Sentences    10941
```

### Final Result

**Total number of sentences: 10,941**

The mapper identified sentence boundaries and emitted one count for each detected sentence. The reducer aggregated those counts into the final total.

---

# 🔍 Validation and Verification

Validation was performed throughout the workflow rather than only at the end.

| Validation stage | Command / method | Purpose |
|---|---|---|
| Local filesystem | `ls` | Confirm directories and files existed |
| File contents | `cat` | Inspect generated files and outputs |
| Hadoop services | `jps` | Verify master/worker Hadoop processes |
| HDFS structure | `hadoop fs -ls` | Confirm HDFS directories and files |
| Hadoop completion | `_SUCCESS` | Confirm successful job completion |
| B.2 logic | `echo ... | mapper | reducer` | Test scripts before distributed execution |
| HDFS → Ubuntu | `hadoop fs -get` / `hdfs dfs -get` | Retrieve generated results |
| Word ranking | `sort -k2 -nr ... | head -10` | Identify top 10 frequencies |
| Final output | `cat output/part-00000` | Inspect analytical result |

The use of repeated verification points made the workflow traceable and reproducible.

---

# 📊 Final Results and Business Interpretation

## A Christmas Carol

The top ten words were:

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

These results demonstrate the conversion of unstructured text into a structured vocabulary profile.

For PageTurner Books Ltd., the same approach could be extended across a larger catalogue to identify recurring terms, compare books and support targeted marketing or literary analysis.

## Moby Dick

The final result was:

```text
Total Sentences = 10,941
```

This provides a basic measure of textual scale. Across a larger catalogue, comparable measures could contribute to book-length or complexity classification and recommendation strategies for advanced readers.

---

# 🔁 MapReduce Pattern Comparison

| Task | Mapper Output | Shuffle/Sort | Reducer Operation | Final Output |
|---|---|---|---|---|
| Word frequency | `word → 1` | Groups identical words | Sums values for each word | Frequency for every word |
| Sentence count | `sentence → 1` | Groups sentence records | Sums all records | One total sentence count |

The two tasks therefore demonstrate the same MapReduce architecture applied to two different analytical requirements.

---

# 🖼️ Assessment Evidence and Screenshots

The repository contains terminal screenshots captured during the implementation. These are **implementation evidence**, rather than conventional statistical visualisations.

The assessment brief required screenshots demonstrating completion of the work and required the Ubuntu username to be visible in the evidence. The screenshot set therefore documents the implementation stages from Ubuntu/Bash setup through Hadoop processing and final outputs.

## Question 1 — Ubuntu/Bash

```text
Q1_01_Create_PageTurnerBooks_Directory.png
Q1_02_Create_Project_Subdirectories.png
Q1_03_Create_Inventory_Files.png
Q1_04_Copy_Bestsellers_to_Reviews.png
Q1_05_Create_and_Populate_Store_Info.png
```

## Question 2 — B.1 Word Frequency

```text
Q2_01_Start_Hadoop_and_Verify_Cluster.png
Q2_02_Create_B1_Working_Directory.png
Q2_03_Copy_A_Christmas_Carol_Dataset.png
Q2_04_Create_Word_Frequency_Mapper.png
Q2_05_Create_Word_Frequency_Reducer.png
Q2_06_Word_Frequency_Scripts_and_Permissions.png
Q2_07_Word_Frequency_Reducer_Code.png
Q2_08_Verify_Executable_Scripts.png
Q2_09_Create_Word_Count_HDFS_Directory.png
Q2_10_Upload_Christmas_Carol_to_HDFS.png
Q2_11_Hadoop_Streaming_Execution_Output.png
Q2_12_Verify_HDFS_Output_Files.png
Q2_13_Retrieve_Word_Frequency_Output.png
Q2_14_Complete_Word_Frequency_Output.png
Q2_15_Top_10_Word_Frequencies.png
```

## Question 2 — B.2 Sentence Count

```text
Q2_16_Start_Hadoop_for_Sentence_Count.png
Q2_17_Create_B2_Working_Directory.png
Q2_18_Copy_Moby_Dick_Dataset.png
Q2_19_Create_Sentence_Count_Mapper.png
Q2_20_Create_Sentence_Count_Reducer.png
Q2_21_Sentence_Count_Scripts_and_Permissions.png
Q2_22_Verify_Sentence_Count_Scripts.png
Q2_23_Local_Mapper_Reducer_Testing.png
Q2_24_Create_Sentence_Count_HDFS_Directory.png
Q2_25_Upload_Moby_Dick_to_HDFS.png
Q2_26_Confirm_Moby_Dick_HDFS_Upload.png
Q2_27_Run_Sentence_Count_Hadoop_Streaming.png
Q2_28_Sentence_Count_Streaming_Output.png
Q2_29_Retrieve_Sentence_Count_Output.png
Q2_30_Verify_Sentence_Count_Output_Files.png
Q2_31_Final_Sentence_Count_Output.png
```

---

# 📂 Repository Structure

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

# ♻️ Reproducibility

## 1. Prepare Ubuntu

Use an Ubuntu environment with Hadoop configured as a master/worker cluster.

The original implementation was performed in a VirtualBox-based environment.

## 2. Start Hadoop

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

Verify the expected Hadoop Java processes before beginning either analytical task.

## 3. Use the project command log

The complete batch command collection is stored in:

```text
code/batch commands used in hadoop distributed text analytics.txt
```

## 4. Use the supplied datasets

```text
data/A Christmas Carol.txt
data/Moby Dick or The Whale.txt
```

## 5. Recreate the workflows

The mapper/reducer implementations and command sequences documented in this README provide the complete workflow for:

- PageTurner Books directory creation;
- B.1 word-frequency analysis; and
- B.2 sentence-count analysis.

### Environment-specific paths

The original implementation used:

```text
/home/ubong-etok/
```

A different Ubuntu username or Hadoop installation may require these paths to be changed.

---

# 📝 Implementation Notes and Limitations

## Python and Hadoop Streaming

Hadoop Streaming enabled executable programs using standard input and output to participate in Hadoop MapReduce jobs. This allowed Python to be used for both analytical tasks.

## Mapper/reducer separation

The implementation follows the standard pattern:

```text
Raw Input
   ↓
Mapper
   ↓
Intermediate Key/Value Pairs
   ↓
Shuffle / Sort
   ↓
Reducer
   ↓
Final Structured Result
```

## Word-frequency logic

The B.1 mapper:

- converts input to lowercase;
- extracts alphabetic word sequences;
- emits `word → 1`.

The B.1 reducer aggregates repeated keys.

Because the implementation counts all extracted words, common grammatical words appear prominently in the ranking. A more advanced Natural Language Processing pipeline could introduce stop-word removal, stemming or lemmatisation, but those extensions were outside the assessment requirement.

## Sentence-detection logic

The B.2 mapper uses:

```python
r'[.!?]+'
```

This provides a straightforward rule-based method for identifying sentence-ending punctuation.

It is suitable for the assessment task but may not perfectly model every literary punctuation convention, such as abbreviations or more complex punctuation structures.

## HDFS and environment dependency

The Hadoop Streaming commands depend on the Hadoop installation path and Ubuntu username used during the implementation.

For example:

```text
/usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar
/home/ubong-etok/
```

These paths may need to be adjusted in another environment.

## Analytical scope

The project demonstrates two focused MapReduce applications rather than a complete production recommendation or marketing platform.

The architecture could be extended to a larger book catalogue with additional features such as:

- vocabulary profiles;
- document length;
- sentence-length distributions;
- keyword extraction;
- reading-level indicators; and
- recommendation features.

---

# 📚 References

- Apache Hadoop (2025). *Hadoop Documentation*. https://hadoop.apache.org/docs/
- Dean, J. and Ghemawat, S. (2008). “MapReduce: Simplified Data Processing on Large Clusters.” *Communications of the ACM*, 51(1), pp. 107–113.
- Free Software Foundation (2025). *Bash Reference Manual*. https://www.gnu.org/software/bash/manual/bash.html
- Griffiths, I. (2026a). *MS4S21 Big Data Engineering and its Applications — Lecture 1*. University of South Wales.
- Griffiths, I. (2026b). *MS4S21 Big Data Engineering and its Applications — Lecture 2*. University of South Wales.
- Griffiths, I. (2026). *MS4S21 Big Data Engineering and its Applications — Lecture 3 & 4*. University of South Wales.
- Project Gutenberg. *A Christmas Carol* by Charles Dickens.
- Project Gutenberg. *Moby Dick; Or, The Whale* by Herman Melville.

### AI-assisted development

The assessment brief explicitly permitted AI tools for the development of the B.2 `total_sentences_mapper.py` and `total_sentences_reducer.py` files.

Accordingly, AI assistance was used specifically for those two Python files. The scripts were then tested locally using the required assessment statements and subsequently executed through Hadoop Streaming.

---

# 👤 Author

**Ubong Etok**

**MSc Data Science | Data Analytics | Business Intelligence | SQL | Machine Learning**

- GitHub: https://github.com/xzibitetok
- Portfolio: https://xzibitetok.github.io

---

# ⭐ Project Summary

```text
Bash
 ↓
Ubuntu
 ↓
PageTurner Books Directory
 ↓
Hadoop Master / Worker
 ↓
HDFS
 ↓
YARN
 ↓
MapReduce
 ↓
Python Mapper / Reducer
 ↓
Hadoop Streaming
 ↓
Structured Analytical Output
 ↓
Validation
 ↓
Business Interpretation
```

This project demonstrates a complete Big Data Engineering workflow in which unstructured literary data was prepared, stored, distributed and processed through Hadoop to produce structured analytical results.

The final analytical outputs were:

- **Top word in *A Christmas Carol*:** `the` — **1,791 occurrences**
- **Top 10 word frequencies:** identified and ranked through Hadoop output
- **Total sentences in *Moby Dick; Or, The Whale*:** **10,941**

The repository therefore documents the complete progression from basic Ubuntu/Bash filesystem management through distributed Hadoop processing and final text analytics.
