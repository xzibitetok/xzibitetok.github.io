# PageTurner Books Ltd. — Linux, Bash and Hadoop Technical Documentation

> An end-to-end Linux and Hadoop project covering Bash-based data
> organisation, Hadoop cluster preparation, HDFS storage, MapReduce
> processing and distributed text analytics using Python.

---

# Table of Contents

1. [Project Overview](#project-overview)
2. [Project Objectives](#project-objectives)
3. [Project Scope — Questions Covered](#project-scope--questions-covered)
4. [Project Workflow](#project-workflow)
5. [Technologies and Libraries](#technologies-and-libraries)
6. [Dataset](#dataset)
7. [Hadoop Architecture](#hadoop-architecture)
8. [Technology Stack](#technology-stack)
9. [Key Results](#key-results)
10. [Project Files](#project-files)
11. [Reproducibility](#reproducibility)
12. [QUESTION 1 — TASK A](#question-1--task-a)
13. [QUESTION 1 — TASK B](#question-1--task-b)
14. [QUESTION 2 — B.1: WORD FREQUENCY COUNT](#question-2--b1-word-frequency-count-a-christmas-carol)
15. [QUESTION 2 — B.2: TOTAL NUMBER OF SENTENCES](#question-2--b2-total-number-of-sentences-the-moby-dick-or-the-whale)
16. [Implementation Notes](#implementation-notes)
17. [Limitations and Considerations](#limitations-and-considerations)
18. [References](#references)
19. [Author](#author)
20. [Repository Structure](#repository-structure)

---

# Project Overview

PageTurner Books Ltd. is exploring the use of Linux, Bash and
Hadoop-based big data technologies to organise business information and
analyse large digital book files.

The project begins in an Ubuntu environment and progresses from
command-line file and directory management through to distributed text
processing with Apache Hadoop.

The implementation covers:

-   Linux and Bash command-line operations;
-   structured PageTurner Books Ltd. data organisation;
-   Hadoop cluster startup and verification;
-   HDFS distributed storage;
-   Python-based mapper and reducer development;
-   Hadoop Streaming;
-   word frequency analysis of *A Christmas Carol*; and
-   sentence counting of *The Moby Dick or The Whale*.

The technical documentation below retains the detailed working process,
commands, Python code, outputs and conclusions used throughout the
project.

---

# Project Objectives

The project applies Linux, Bash and Hadoop technologies to a practical
text-processing workflow for PageTurner Books Ltd.

The main objectives are to:

-   develop confidence with Linux command-line administration and Bash;
-   organise PageTurner Books Ltd. information using a structured
    directory hierarchy;
-   understand the core components of the Hadoop ecosystem;
-   configure and verify a working Hadoop master/worker environment;
-   store large text datasets using HDFS;
-   implement MapReduce workflows using Python;
-   execute Python mapper and reducer scripts through Hadoop Streaming;
-   analyse word frequencies in *A Christmas Carol*; and
-   calculate the total number of sentences in *The Moby Dick or The
    Whale*.

---

---

# Project Scope — Questions Covered

For clarity, the complete project scope is listed below. This section
provides a quick view of all the areas covered before the detailed
technical documentation begins.

  -----------------------------------------------------------------------
  Area                    Question / Workstream   What was covered
  ----------------------- ----------------------- -----------------------
  **Question 1 — Task    Linux and Bash          Bash definition and
  A**                                             history, its role in
                                                  Linux, Bash vs GUI, and
                                                  practical Bash commands

  **Question 1 — Task    PageTurner Books        Creation of the
  B**                     directory structure     `PageTurnerBooks`
                                                  directory,
                                                  subdirectories,
                                                  inventory files, copied
                                                  files and
                                                  `store_info.md`

  **Question 2 — Task    Hadoop architecture     Roles and functions of
  A**                                             HDFS, MapReduce, YARN
                                                  and Hadoop Common, and
                                                  how the components work
                                                  together

  **Question 2 — B.1**   Word frequency count    Hadoop MapReduce
                                                  word-frequency analysis
                                                  using *A Christmas
                                                  Carol*

  **Question 2 — B.2**   Total number of         Hadoop MapReduce
                          sentences               sentence counting using
                                                  *The Moby Dick or The
                                                  Whale*
  -----------------------------------------------------------------------

### Question 1 — Linux and Bash

**Task A:** Explain what Bash is, its history and its role within Linux
systems; compare Bash with a graphical user interface; and explain the
practical use of commands including `mkdir`, `cd`, `touch`, `cp`, `echo`
and `ls`.

**Task B:** Build the PageTurner Books Ltd. directory structure using
Bash commands, including:

```text
PageTurnerBooks/
├── inventory/
├── customer/
├── orders/
├── reviews/
└── library/
```

Create:

-   `book_catalog.csv`
-   `bestsellers.txt`
-   a copy of `bestsellers.txt` in `reviews`
-   `store_info.md` containing the PageTurner Books Ltd. description.

### Question 2 — Hadoop

**Task A:** Explain the roles and functions of:

-   HDFS
-   MapReduce
-   YARN
-   Hadoop Common

and explain how these Hadoop components work together.

**B.1:** Implement a word-frequency MapReduce workflow for *A Christmas
Carol*, upload the text to HDFS, execute Hadoop Streaming and identify
the top 10 most frequent words.

**B.2:** Implement a sentence-count MapReduce workflow for *The Moby
Dick or The Whale*, locally test the mapper and reducer, upload the
dataset to HDFS, execute Hadoop Streaming and identify the total number
of sentences.

> The detailed implementation below follows the technical reports,
> including the practical commands, scripts, testing process, Hadoop
> execution and resulting outputs.

---

# Project Workflow

The project followed a complete Ubuntu-to-Hadoop workflow:

```text
Ubuntu Environment
       │
       ▼
Linux / Bash File Management
       │
       ├── Create PageTurnerBooks
       ├── Create business directories
       ├── Create inventory files
       ├── Copy bestsellers.txt
       └── Create store_info.md
       │
       ▼
Hadoop Cluster Preparation
       │
       ├── Start HDFS
       ├── Start YARN
       └── Verify master / worker with jps
       │
       ▼
Python MapReduce Development
       │
       ├── Mapper
       └── Reducer
       │
       ▼
HDFS Data Storage
       │
       ├── Create HDFS directory
       └── Upload dataset
       │
       ▼
Hadoop Streaming
       │
       ├── Mapper processing
       ├── Shuffle / grouping
       └── Reducer aggregation
       │
       ▼
Output Verification
       │
       ├── Check HDFS output
       ├── Retrieve output locally
       └── Inspect part-00000 / _SUCCESS
       │
       ▼
Final Analysis
       │
       ├── Top 10 words in A Christmas Carol
       └── 10,941 sentences in Moby Dick
```

This workflow provides a clear view of how the project progressed from
basic Linux file-system operations to distributed big data processing.

---

# Technologies and Libraries

  -----------------------------------------------------------------------
  Technology / Library                Purpose
  ----------------------------------- -----------------------------------
  **Ubuntu Linux**                    Operating-system environment for
                                      the command-line and Hadoop
                                      implementation

  **Bash**                            File-system navigation, directory
                                      creation, file manipulation and
                                      system commands

  **Apache Hadoop 3.4.1**             Distributed data-processing
                                      framework

  **HDFS**                            Distributed storage for input
                                      datasets and MapReduce output

  **YARN**                            Cluster resource management and job
                                      execution

  **MapReduce**                       Distributed processing model used
                                      for the text-analysis workflows

  **Hadoop Streaming**                Runs mapper and reducer programs
                                      written in Python

  **Python 3**                        Implementation language for the
                                      mapper and reducer scripts

  **`sys`**                           Python standard-library module used
                                      for standard input processing

  **`re`**                            Python standard-library module used
                                      for text and sentence-pattern
                                      matching

  **GNU/Linux utilities**             Commands including `ls`, `cat`,
                                      `sort`, `head`, `chmod`, `mv`,
                                      `cp`, `echo` and `jps`

  **VirtualBox / virtual-machine      Provides the master and worker
  environment**                       Ubuntu environments used for the
                                      Hadoop cluster
  -----------------------------------------------------------------------

---

# Dataset

Two literary text datasets were used in the distributed processing
workflows:

  -----------------------------------------------------------------------
  Dataset                             Purpose
  ----------------------------------- -----------------------------------
  **A Christmas Carol**               Word-frequency analysis using
                                      Hadoop MapReduce

  **Moby Dick or The Whale**          Sentence-count analysis using
                                      Hadoop MapReduce
  -----------------------------------------------------------------------

The datasets are treated as unstructured text inputs. The MapReduce
workflows transform this raw text into structured key-value pairs and
aggregated numerical results.

---

# Hadoop Architecture

The Hadoop implementation uses the main components below:

  -----------------------------------------------------------------------
  Component                           Role in the project
  ----------------------------------- -----------------------------------
  **HDFS**                            Provides distributed storage for
                                      the book datasets and generated
                                      Hadoop output

  **MapReduce**                       Provides the distributed processing
                                      model for word-frequency and
                                      sentence-count analysis

  **YARN**                            Manages cluster resources and
                                      coordinates execution of Hadoop
                                      jobs

  **Hadoop Common**                   Provides the common libraries and
                                      utilities required by the other
                                      Hadoop modules
  -----------------------------------------------------------------------

The components work together as follows:

```text
Input Text
    │
    ▼
HDFS
    │
    ▼
YARN ───────────────► Cluster Resource Management
    │
    ▼
MapReduce
    │
    ├── Mapper
    │
    ├── Shuffle / Grouping
    │
    └── Reducer
    │
    ▼
HDFS Output
```

For both analytical workflows, the input text is uploaded to HDFS,
Hadoop Streaming launches the Python mapper and reducer, MapReduce
processes and aggregates the data, and the resulting output is retrieved
for inspection.

---

# Technology Stack

  -----------------------------------------------------------------------
  Technology                          Role
  ----------------------------------- -----------------------------------
  **Ubuntu Linux**                    Operating-system environment and
                                      Hadoop virtual-machine environment

  **Bash**                            Command-line file, directory and
                                      system management

  **Apache Hadoop 3.4.1**             Distributed big data processing
                                      framework

  **HDFS**                            Distributed storage of the book
                                      datasets and Hadoop output

  **YARN**                            Hadoop cluster resource management
                                      and job execution

  **MapReduce**                       Distributed processing model used
                                      for both text-analysis workflows

  **Hadoop Streaming**                Interface used to execute Python
                                      mapper and reducer scripts

  **Python 3**                        Implementation language for mapper
                                      and reducer programs

  **GNU/Linux utilities**             `ls`, `cat`, `sort`, `head`,
                                      `chmod`, `mv`, `echo`, `jps` and
                                      related commands
  -----------------------------------------------------------------------

---

# Key Results

## A Christmas Carol --- Word Frequency

The MapReduce workflow produced the following top 10 most frequent
words:

    Rank Word     Frequency
  ------ ------ -----------
       1 the          1,791
       2 and          1,139
       3 of             865
       4 a              774
       5 to             761
       6 in             589
       7 it             560
       8 he             492
       9 was            427
      10 his            417

## The Moby Dick or The Whale --- Sentence Count

The final Hadoop output was:

```text
Total Sentences    10941
```

**Final result: 10,941 sentences.**

---

# Project Files

The repository documentation is centred around the following project
files and artefacts:

  ---------------------------------------------------------------------------------------------------------
  File / Directory                                                      Description
  --------------------------------------------------------------------- -----------------------------------
  `README.md`                                                           Complete technical documentation of
                                                                        the Linux, Bash and Hadoop
                                                                        workflows

  `code/batch commands used in hadoop distributed text analytics.txt`   Batch record of the commands used
                                                                        during the Hadoop implementation

  `data/A Christmas Carol.txt`                                          Input dataset for word-frequency
                                                                        analysis

  `data/Moby Dick or The Whale.txt`                                     Input dataset for sentence-count
                                                                        analysis

  `word_count_mapper.py`                                                Python mapper for word-frequency
                                                                        processing

  `word_count_reducer.py`                                               Python reducer for word-frequency
                                                                        aggregation

  `total_sentences_mapper.py`                                           Python mapper for sentence
                                                                        detection and counting

  `total_sentences_reducer.py`                                          Python reducer for calculating the
                                                                        total sentence count
  ---------------------------------------------------------------------------------------------------------

The mapper and reducer source code is also reproduced directly within
the relevant sections of this README so that the implementation can be
understood without relying on separate technical reports.

---

# Reproducibility

The workflows documented in this repository can be reproduced in an
Ubuntu environment with Apache Hadoop configured as a master/worker
cluster.

### Environment

The implementation used:

-   Ubuntu Linux;
-   Apache Hadoop 3.4.1;
-   a master and worker virtual-machine configuration;
-   Python 3; and
-   Hadoop Streaming.

### Hadoop startup

On the master:

``` bash
start-dfs.sh
start-yarn.sh
jps
```

On the worker:

``` bash
jps
```

The Java process list is used to confirm that the required Hadoop
services are running, including the NameNode, SecondaryNameNode,
DataNode, ResourceManager and NodeManager.

### Reproducing the analytical workflows

1.  Place the required text datasets in the working environment.
2.  Create the corresponding working directories.
3.  Create or obtain the mapper and reducer scripts documented in this
    README.
4.  Make the scripts executable with `chmod +x`.
5.  Create the required HDFS directories.
6.  Upload the input datasets using `hadoop fs -put`.
7.  Run the Hadoop Streaming commands shown in the relevant sections.
8.  Verify the generated HDFS output.
9.  Retrieve the output using `hadoop fs -get`.
10. Inspect the resulting `part-00000` file and, where applicable, use
    `sort` and `head` to identify the top results.

### Environment-specific path

The original implementation used the Ubuntu username `ubong-etok` in
paths such as:

```text
/home/ubong-etok/
```

When reproducing the project on another machine, replace this username
and any installation-specific Hadoop paths with the appropriate local
values.

### Validation

The implementation includes several validation points:

-   `jps` to verify Hadoop services;
-   `ls` and `hadoop fs -ls` to confirm files and directories;
-   local `echo` tests for the sentence-count mapper/reducer;
-   `_SUCCESS` and `part-00000` files to confirm Hadoop output;
-   `cat` to inspect complete results; and
-   `sort -k2 -nr ... | head -10` to identify the highest-frequency
    words.

---

# Implementation Notes

The project deliberately keeps the mapper and reducer logic simple and
transparent.

For word-frequency analysis, the mapper:

-   reads input line by line;
-   strips surrounding whitespace;
-   converts text to lowercase;
-   extracts alphabetic word sequences using a regular expression; and
-   emits each word with the value `1`.

The reducer then groups identical keys and sums their associated values.

For sentence counting, the mapper identifies sentence-ending punctuation
using the regular expression `[.!?]+` and emits `sentence    1` for each
detected sentence. The reducer sums these values to produce the final
sentence count.

This approach demonstrates the MapReduce processing pattern clearly
while keeping the implementation suitable for Hadoop Streaming.

---

# Limitations and Considerations

### Word-frequency analysis

The word-frequency mapper converts text to lowercase and extracts
alphabetic sequences. As a result, common grammatical words such as
`the`, `and`, `of` and `a` dominate the ranking.

For a more linguistically meaningful analysis, the workflow could be
extended with:

-   stop-word removal;
-   stemming;
-   lemmatisation; and
-   additional text normalisation.

### Sentence counting

The sentence-count mapper uses `[.!?]+` as a simple sentence-boundary
rule. This approach is effective for the required workflow but is not a
complete natural-language sentence detector.

Potential limitations include:

-   abbreviations containing full stops;
-   quotations;
-   literary punctuation;
-   decimal values; and
-   other punctuation patterns that do not necessarily indicate sentence
    boundaries.

### Environment

The commands depend on the Hadoop installation, Ubuntu configuration,
user account and local file paths. Paths should therefore be adjusted
when reproducing the project in another environment.

### Scope

The project demonstrates two focused MapReduce workflows rather than a
production-scale recommendation or commercial analytics platform.

---

---


# QUESTION 1 — TASK A

## Introduction

This section covers the requirements of Question 1 Task A, which entails
explaining what Bash is, the history of its creation, and how it fits
into the Linux systems. It also compares Bash with graphical user
interfaces (GUIs) and with how important Bash commands like `mkdir`,
`cd`, `touch`, `cp`, `echo` and `ls` can be used to manage files and
directories at PageTurner Books Ltd.

## Brief Overview of Bash

Bash, also known as the Bourne Again Shell is a command-line shell and
scripting language that is widely used in Unix and Linux operating
systems (e.g., Ubuntu).

Bash was originally written for the GNU Project as a replacement for the
Bourne Shell and is known to be one of the standard command interpreters
for the Linux operating system. Bash acts as an intermediary between the
user and the operating system, enabling the user to interact with the
system by entering commands directly into the terminal, rather than
using graphical menus.

## Importance of Bash in Linux Systems

Bash is particularly crucial to Linux operating systems because it
offers system-level access and file management. As explored during the
module lectures, Linux operating systems are often used in virtualized
environments and Big Data systems because they are efficient, flexible,
and provide a level of access and control. Bash allows users to create
and manage files, manage directories, automate processes, and set up
environments by entering typed commands.

## Bash vs Graphical User Interface (GUI)

A Graphical User Interface (GUI) enables the user to interact with a
computer using icons, menus and windows. Bash can be more effective for
technical purposes than GUIs, though GUIs are often easier to use.

Bash has a faster approach to performing routine tasks, can automate
commands through scripts and consumes less system resources than other
interfaces. In Ubuntu systems, command-line tools are most commonly used
as they offer more accuracy and are more easily replicated. For
PageTurner Books Ltd, Bash offers a way to organise a system of
directories to organize company data.

## Key Bash Commands Used

-   The `mkdir` command means "make directory" and is used to create
    folders. In this project, it was used to create the main
    `PageTurnerBooks` directory and subfolders such as inventory,
    customer, and reviews.

-   The `cd` command means "change directory" and allows users to move
    between folders. In this project, it was used to move into
    `PageTurnerBooks` and then into the inventory directory before
    creating files.

-   The `touch` command creates empty files. In this project, it was
    used to create `book_catalog.csv`, `bestsellers.txt`, and
    `store_info.md`.

-   The `cp` command means "copy" and duplicates files between
    locations. In this project, it was used to copy the
    `bestsellers.txt` file from the inventory into the reviews
    directory.

-   The `echo` command outputs text to the terminal or inserts text into
    a file. In this project, it was used to write a company introduction
    into the `store_info.md` file.

-   The `ls` command means "list" and displays files and folders within
    a directory. In this project, it was used time to time to confirm
    that directories and files had been created correctly.

## Conclusion

To sum up, Bash is an effective and efficient tool of communicating with
Linux systems via command-line operations. The fact that it can handle
files, automate, and operate with minimal system resources make it more
suitable than graphical interfaces in technical environments.

The use of commands such as `mkdir`, `cd`, `touch`, `copy`, `echo`, and
`ls` demonstrates that Bash can be used to effectively plan and manage
the data for PageTurner Books Ltd.

---

# QUESTION 1 — TASK B

## Introduction

This section will discuss the specifications of Question 1 Task B that
will enable the creation of a structured directory system of PageTurner
Books Ltd. using Bash commands only. The assignment shows how
command-line operations can be practically used to create directories,
work with files, and structure company data. All the steps are backed up
with technical documentation to demonstrate how the commands were
successfully executed and what the file structure was.

## Step 1: Creating a Directory called "PageTurnerBooks" in Home Directory

The initial step was to change the current directory in Ubuntu to the
home location by using the command `cd ~`. This guarantees the main
business folder is stored in the user's home directory, as per the
project specification.

The `mkdir PageTurnerBooks` command was used to create the main
directory, which will hold all of the company data. The `ls` command was
then used to confirm that the directory was created.

### Bash Code used

``` bash
cd ~
mkdir PageTurnerBooks
ls
```

## Step 2: Creating Subdirectories inside the "PageTurnerBooks" directory

After entering the `PageTurnerBooks` folder using the
`cd PageTurnerBooks` command, a number of subdirectories were created to
categorise business data.

The `inventory`, `customer`, `orders`, `reviews`, and `library` folders
were created with the `mkdir` command. This pattern allows for business
information to be categorised, increasing file organisation and
facilitating future growth.

The `ls` command was then used to verify that the folders had been
created.

### Bash Code used

``` bash
cd PageTurnerBooks
mkdir inventory customer orders reviews library
ls
```

## Step 3: Creating two empty files in the Inventory directory

This was followed by changing the current directory to inventory via the
`cd inventory` command.

The `touch` command was used to create two empty files:
`book_catalog.csv` and `bestsellers.txt`. The CSV file provides storage
for structured inventory data, and the text file provides storage for
information containing bestselling books.

The `ls` command was then used to verify that both files were present in
the inventory directory.

### Bash Code used

``` bash
cd inventory
touch book_catalog.csv
touch bestsellers.txt
ls
```

## Step 4: Copying bestsellers.txt to the Reviews Directory

The `bestsellers.txt` file was copied into the reviews file using the
`cp` command.

The copy command `cp bestsellers.txt ../reviews/` made a duplicate and
left the original file in the inventory folder. This is an example of
how Linux Bash commands can be used to copy information to different
destinations while maintaining the original file.

I verified the copying of the file by listing the contents of the
inventory and reviews folders using the `ls` command.

### Bash Code used

``` bash
cp bestsellers.txt ../reviews/
ls
ls ../reviews/
```

## Step 5: Returning to the "PageTurnerBooks" Root Directory and creating a Markdown File

The last step was to move up to the `PageTurnerBooks` directory with the
`cd ..` command.

A new Markdown file called `store_info.md` was created with the `touch`
command. A brief description of the company was written to the file
using the `echo` command.

Markdown is useful as it provides a simple way to format text without
being too complicated. The `cat` command was used to view the contents
of the file to ensure that the information was written correctly.

### Bash Code used

``` bash
cd ..
touch store_info.md
echo "PageTurner Books Ltd is an independent bookstore based in Manchester specializing in fiction, non-fiction, and rare books." > store_info.md
cat store_info.md
```

## Conclusion

To sum up, the directory structure of PageTurner Books Ltd. was
successfully developed with the help of Bash commands.

It was shown how command-line applications can be utilised to
systematise files and directories effectively. This organised framework
offers a scalable and well organised method of handling business data.

---

# QUESTION 2 — B.1: WORD FREQUENCY COUNT ("A CHRISTMAS CAROL")

## Introduction

PageTurner Books Ltd. expects to use big data analytics to gain
information about its book collection using Hadoop. The following task
utilizes Hadoop MapReduce to perform Word Frequency Analysis on A
Christmas Carol in order to gain insight into marketing the text and the
writing style used by the author.

Practical implementation will consist of writing Python-based mapper and
reducer scripts, uploading the text file into HDFS, running a Hadoop
Streaming job, and analysing the resulting output. The working process,
commands and resulting output are documented below, leading to
identification of the top 10 most frequent words.

## Step 1: Starting Hadoop Services and Verifying Cluster Communication Between the two machines

The Hadoop services were launched on the master machine by use of the
HDFS and YARN startup commands. This cluster was then checked by
ensuring that the master and worker virtual machines were communicating
well.

On both machines, the Java process lists were checked to ensure that the
necessary services of Hadoop such as NameNode, SecondaryNameNode,
ResourceManager, DataNode and NodeManager were successfully running
before processing started.

### Bash Code used on Master

``` bash
start-dfs.sh
start-yarn.sh
jps
```

### Bash used on Worker

``` bash
jps
```

## Step 2: Creating and moving into working directory

The working directory named `Question2_Task_B1` was created to store all
the scripts, input files and outputs of the Word Frequency task.

Switching into the directory allowed keeping all the commands, mapper
scripts, reducer scripts, and generated outputs are retained in one
organized location.

### Bash Code used on Master

``` bash
cd ~
mkdir Question2_Task_B1
cd Question2_Task_B1
pwd
```

## Step 3: Copying input file into working directory and confirming output

The "A Christmas Carol" text file was copied from the Downloads folder
into the working directory. This enabled it to be accessed locally
before being uploaded to Hadoop.

To verify that the input file had been copied successfully into the
directory, the `ls` command was used to confirm the input file had been
copied successfully into the directory.

### Bash Code used on Master

``` bash
cp ~/Downloads/"A Christmas Carol.txt" .
ls
```

## Step 4: Creating a mapper script

The mapper script was designed to read the text file line by line and
remove individual words from the content of the text file.

The words identified were all converted to lowercase, with a value of
"1" attached to the words. This step is the first step in the MapReduce
workflow, in which raw text is converted into key-value pairs, which can
be distributed across multiple computers to accomplish distributed
processing.

### Bash Code used on Master

``` bash
nano word_count_mapper.py
```

### Python code

``` python
#!/usr/bin/env python3
import sys
import re

for line in sys.stdin:
    line = line.strip().lower()
    words = re.findall(r'\b[a-z]+\b', line)

    for word in words:
        print(f"{word}\t1")
```

## Step 5: Creating reducer script

The reducer script was created to take in the key-value pairs that the
mapper generates and combine identical words into one total frequency
count.

This process of aggregation enables Hadoop to compute the frequency of
occurrence of each word in the text.

### Bash Code used on Master

``` bash
nano word_count_reducer.py
```

### Python code

``` python
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

## Step 6: Making scripts executable

Both the mapper and the reducer scripts were given execution permissions
with `chmod` commands. This was necessary to ensure Hadoop streaming is
able to identify and run the scripts in the processing.

The output of the command proves that it was possible to grant
executable permissions.

### Bash Code used on Master

``` bash
chmod +x word_count_mapper.py
chmod +x word_count_reducer.py
ls -l
```

## Step 7: Creating HDFS directory

A special directory was made in the Hadoop Distributed File System
(HDFS) to keep the uploaded text file and the generated output.

This directory structure offers a structured, distributed storage for
the Hadoop workflow and stores all Word Frequency files in one place.

### Bash Code used on Master

``` bash
hadoop fs -mkdir /user/ubong-etok/WordCount_ChristmasCarol
hadoop fs -ls /user/ubong-etok
```

## Step 8: Uploading file to HDFS and confirming the upload

The text file was loaded into the HDFS so that it could be accessed and
processed by Hadoop on the cluster.

Once uploaded, the files in the directory in the HDFS were listed to
ensure that the file had been transferred successfully. This
verification guarantees that the input file can be accessed by Hadoop to
process the file.

### Bash Code used on Master

``` bash
hadoop fs -put A_Christmas_Carol.txt /user/ubong-etok/WordCount_ChristmasCarol/
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol
```

## Step 9: Running Hadoop Streaming

The implementation of Hadoop streaming was done with the help of the
custom mapper and reducer scripts.

In this step, Hadoop distributed the processing task around the cluster
and used the MapReduce workflow to find out the frequency of words. The
output shows successful completion of the streaming and indicates the
place where the generated output directory is located.

The Hadoop streaming enabled Python scripts to be incorporated into the
Hadoop MapReduce system, allowing custom mapper and reducer programs to
be run across the cluster.

The mapper script is executed first, followed by the reducer script, to
generate intermediate pairs of key-values in the first instance and to
aggregate and combine similar values in the second instance to produce
final word frequency counts.

### Bash Code used on Master

``` bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B1/word_count_mapper.py,/home/ubong-etok/Question2_Task_B1/word_count_reducer.py \
-mapper "python3 word_count_mapper.py" \
-reducer "python3 word_count_reducer.py" \
-input /user/ubong-etok/WordCount_ChristmasCarol/A_Christmas_Carol.txt \
-output /user/ubong-etok/WordCount_ChristmasCarol/output
```

## Step 10: Confirming Successful Creation of Hadoop Output Files in HDFS Directory

The output directory created in HDFS was analyzed to ensure that Hadoop
was able to create the desired result files.

The presence of the `part-00000` file and `_SUCCESS` marker shows
successful completion of the Hadoop job, indicating that the word count
results were written to distributed storage with no errors.

### Bash Code used on Master

``` bash
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol/output
```

## Step 11: Copying output to local system and checking output files

The Hadoop output generated was transferred out of HDFS into the Ubuntu
local directory.

This enabled the results to be obtained locally, where inspection and
reporting can take place. The output directory was then inspected in
order to ensure that the desired Hadoop output files were in place.

### Bash Code used on Master

``` bash
hadoop fs -get /user/ubong-etok/WordCount_ChristmasCarol/output
ls output
```

## Step 12: Viewing the Complete Word Frequency Output from Hadoop MapReduce

The output file generated was opened and the entire list of words was
displayed with the number of times they appeared.

This action reveals that Hadoop was able to process the text file, and
generate a complete dataset that reveals the frequency of each word in
the novel.

The output file `part-00000` stores the final processed results.

### Bash Code used on Master

``` bash
cat output/part-00000
```

## Step 13: Identifying top 10 words

The output data was ranked in descending order in order to determine the
ten most common words within "A Christmas Carol.txt".

This last step not only gives us an idea of the most prevalent
vocabulary featured in the text, but also shows that Hadoop MapReduce is
very effective in processing large amounts of text.

Sorting was done in descending order using the Linux `sort` command.

### Bash Code used on Master

``` bash
sort -k2 -nr output/part-00000 | head -10
```

### Top 10 results

```text
the    1791
and    1139
of     865
a      774
to     761
in     589
it     560
he     492
was    427
his    417
```

    Rank Word     Frequency
  ------ ------ -----------
       1 the          1,791
       2 and          1,139
       3 of             865
       4 a              774
       5 to             761
       6 in             589
       7 it             560
       8 he             492
       9 was            427
      10 his            417

## Conclusion

This task was able to illustrate how Hadoop MapReduce can be used to
perform Word Frequency Analysis on A Christmas Carol.

The workflow included writing mapper and reducer scripts, starting
Hadoop services, uploading the data to HDFS, running Hadoop streaming
job, and analysing the output generated.

These results confirmed that Hadoop was effective in processing the text
file, giving precise word frequency counts that were stored in the
`part-00000` output file with the "success" marker confirming a
successfully completed job.

The most common words recognized present valuable information about the
typical vocabulary and writing styles.

In general, this activity underscores the ability of Hadoop to convert
unstructured text data to structured analytic output, to support
scalable analysis of keywords, marketing strategies and recommendation
systems for PageTurner Books Ltd.

---

# QUESTION 2 — B.2: TOTAL NUMBER OF SENTENCES ("THE MOBY DICK OR THE WHALE")

## Introduction

PageTurner Books Ltd. is implementing the engineering aspects of big
data to analyse large digital book files.

This task requires one to find the total number of sentences in "The
Moby Dick or The Whale" using Hadoop MapReduce. It is a real-world text
processing problem in which an unstructured text file is converted to a
structured numerical output.

The input file to be used in this task is "The Moby Dick or The
Whale.txt", which was imported into the BDEA-master Ubuntu virtual
machine.

The working process, commands and resulting output are documented below,
leading to identification of the total number of sentences.

## Step 1: Starting Hadoop Services and Verification of Clusters Running on Both Machines

The Hadoop services were launched on the master machine by use of the
HDFS and YARN startup commands.

The Hadoop cluster was confirmed by ensuring that the master and the
worker virtual machines were both started and connected.

Hadoop services were initiated and verified with the help of the Java
process list. This step ensures that the required Hadoop components,
which include NameNode, DataNode, ResourceManager, and NodeManager are
functioning properly prior to the process taking place.

### Bash Code used on Master

``` bash
start-dfs.sh
start-yarn.sh
jps
```

### Bash Code used on Worker

``` bash
jps
```

## Step 2: Creating and Moving into a Working Directory

A special working directory was prepared to store all the scripts, input
files, and output of B.2.

Relocating to the directory meant that all files generated in the course
of the task would be in one location to be executed and recorded easily.

### Bash Code used on Master

``` bash
cd ~
mkdir Question2_Task_B2
cd Question2_Task_B2
ls
```

## Step 3: Copying Moby Dick Input File into Working Directory

"The Moby Dick or The Whale.txt" file was copied to the working
directory from the Virtual Machine Download folder.

This made the text file locally accessible and then uploaded into
Hadoop. The `ls` command was utilized to confirm successful file upload.

### Bash Code used on Master

``` bash
cp ~/Downloads/"Moby Dick or The Whale.txt" .
ls
```

## Step 4: Creating Mapper Script

The mapper script was designed to read the text file line by line and
recognise sentence-ending punctuation marks like full stops, question
marks, and exclamation marks.

A count value of "1" was given to each identified sentence as the first
phase of the MapReduce process.

As per the project specification, AI tools were utilized to help in the
development of the `total_sentences_mapper.py` file for B.2, assisting
in the development of the sentence-counting logic utilized within the
script.

### Bash Code used on Master

``` bash
nano total_sentences_mapper.py
```

### Python code on Master

``` python
#!/usr/bin/env python3

import sys
import re

for line in sys.stdin:
    sentences = re.findall(r'[.!?]+', line)

    for sentence in sentences:
        print("sentence\t1")
```

## Step 5: Creating Reducer Script

The reducer script was written to accept the counts of sentences
generated by the mapper and add them together to come up with an end
result aggregated total.

This stage enabled Hadoop to calculate the total number of sentences
within the book efficiently.

As per the project specification, AI tools were utilized to help with
the development of the `total_sentences_reducer.py` file in B.2, which
would help to structure the aggregation logic needed to obtain the final
number of sentences.

### Bash Code used on Master

``` bash
nano total_sentences_reducer.py
```

### Python code on Master

``` python
#!/usr/bin/env python3

import sys

total_sentences = 0

for line in sys.stdin:
    line = line.strip()
    word, count = line.split('\t')
    total_sentences += int(count)

print("Total Sentences\t", total_sentences)
```

## Step 6: Making Scripts Executable

Both the mapper and reducer scripts were subjected to execution
permissions.

This enabled the Hadoop Streaming to identify and run the scripts during
processing. The output verified that permissions were indeed granted.

### Bash Code used on Master

``` bash
chmod +x total_sentences_mapper.py
chmod +x total_sentences_reducer.py
ls -l
```

## Step 7: Using the "echo" Command in Testing Mapper and Reducer Function Before Uploading to the Hadoop Structure

As per the project specification, the `echo` command was used to test
the mapper and reducer functions before uploading files to the Hadoop
cluster.

Sample sentences included in the project specification were put through
the mapper and reducer pipeline to ensure that sentence detection and
counting were functioning properly.

This verification step ensured that the two scripts yielded the desired
output before running the Hadoop streaming job, to help reduce errors
during processing when the cluster is running.

Local testing of the mapper and reducer with the help of the `echo`
command minimized the risk of a failure in the execution of Hadoop due
to the verification of the scripts that should have created expected
output before the deployment of the mapper and reducer.

This local validation procedure was to verify the logic in both scripts
to make sure that before data is processed in the Hadoop system, the
logic in the two scripts is correct.

### Bash Code used on Master

``` bash
echo "Hello! Welcome to Page Turner Books Ltd." | ./total_sentences_mapper.py | ./total_sentences_reducer.py
echo "Page Turner Books? Well, we are a great company!" | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

## Step 8: Creating HDFS Directory

A specific directory was created in HDFS to store the uploaded text file
and the output generated.

This gave a hierarchical framework to distributed storage in Hadoop.

### Bash Code used on Master

``` bash
hdfs dfs -mkdir -p /user/ubong-etok
hadoop fs -mkdir MobyDick_Sentences
hadoop fs -ls
```

## Step 9: Uploading File to Hadoop

"The Moby Dick or The Whale.txt" was uploaded into HDFS so that Hadoop
could access and process it across the cluster.

This moved the local data to the distributed storage.

### Bash Code used on Master

``` bash
mv *Whale* Moby_Dick_or_The_Whale.txt
hadoop fs -put Moby_Dick_or_The_Whale.txt /user/ubong-etok/MobyDick_Sentences/
```

## Step 10: Confirming Upload of File to Hadoop

The files in the HDFS directory were enumerated to ensure that the text
file were transferred successfully.

This output confirms that the file can be accessed by Hadoop in order to
be processed.

### Bash Code used on Master

``` bash
hadoop fs -ls /user/ubong-etok/MobyDick_Sentences/
```

## Step 11: Running Hadoop Streaming

Hadoop streaming was implemented with the help of mapper and reducer
scripts.

At this point, Hadoop spread the processing job throughout the cluster
and produced a final sentence count. The output is a confirmation that
the MapReduce job was completed successfully.

Sentence counts from mapper were merged into one total by reducer.

### Bash Code used on Master

``` bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B2/total_sentences_mapper.py,/home/ubong-etok/Question2_Task_B2/total_sentences_reducer.py \
-mapper "python3 total_sentences_mapper.py" \
-reducer "python3 total_sentences_reducer.py" \
-input /user/ubong-etok/MobyDick_Sentences/Moby_Dick_or_The_Whale.txt \
-output /user/ubong-etok/MobyDick_Sentences/output
```

## Step 12: Copying Output to Local System

The Hadoop generated output was copied from HDFS back into the Ubuntu
local directory.

This enabled the results to be reviewed and included within the
technical documentation.

### Bash Code used on Master

``` bash
hdfs dfs -get /user/ubong-etok/MobyDick_Sentences/output ./output
```

## Step 13: Checking Output Files

The output directory was inspected to ensure that Hadoop was able to
produce the desired result files.

The existence of `part-00000` and `_SUCCESS` validated the successful
completion of the job.

### Bash Code used on Master

``` bash
ls output
```

## Step 14: Viewing Output

The output file created was opened to look at the final output.

This step confirmed that Hadoop was effective in computing the number of
sentences in the text uploaded.

### Bash Code used on Master

``` bash
cat output/part-00000
```

## Step 15: Identifying the Total Number of Sentences

This final step contained the total number of sentences that were
identified within "The Moby Dick or The Whale.txt" file.

This gave an understanding of the complexity of the text and showed how
Hadoop can be utilized to efficiently process large literary datasets.

The final output was:

```text
Total Sentences    10941
```

### Final result

**10,941 sentences**

## Conclusion

This report demonstrates the Hadoop MapReduce sentence-count task on the
novel "The Moby Dick or The Whale".

The workflow was to prepare mapper and reducer scripts, test them
locally, upload the dataset to HDFS, and run the Hadoop Streaming job.

The mapper recognized the sentence boundaries and the reducer summed up
the counts to give a final total number of sentences.

The results confirm that Hadoop efficiently processed the unstructured
text file and generated a structured output.

The result of this analysis offers PageTurner Books Ltd. the potential
to scale up its approach to assessing the complexity of the text in
order to support reading-level classification, recommendation systems,
and targeted marketing to advanced readers.

---

# References

Apache Hadoop (2025). *Hadoop Documentation*. Available at:

https://hadoop.apache.org/docs/

Dean, J. and Ghemawat, S. (2008). 'MapReduce: Simplified Data Processing
on Large Clusters', *Communications of the ACM*, 51(1), pp. 107–113.

Free Software Foundation (2025). *Bash Reference Manual*. GNU Operating
System. Available at:

https://www.gnu.org/software/bash/manual/bash.html

Griffiths, I. (2026a). *MS4S21 Big Data Engineering and its Applications
-- Lecture 1*. University of South Wales.

Griffiths, I. (2026b). *MS4S21 Big Data Engineering and its Applications
-- Lecture 2*. University of South Wales.

Griffiths, I. (2026). *MS4S21 Big Data Engineering and its Applications
-- Lecture 3 & 4*. University of South Wales.

OpenAI (2026). *ChatGPT* used to support development of Python mapper
and reducer scripts for Hadoop sentence counting. Available at:

https://chat.openai.com/

(Accessed: 3 May 2026).

---

# Author

**Ubong Etok**

GitHub: https://github.com/xzibitetok

Portfolio: https://xzibitetok.github.io

---

# Repository Structure

The repository is organised so that the technical implementation,
datasets, commands and project documentation can be accessed directly
from the repository.

```text
hadoop-distributed-text-analytics/
├── README.md
├── code/
│   └── batch commands used in hadoop distributed text analytics.txt
└── data/
    ├── A Christmas Carol.txt
    └── Moby Dick or The Whale.txt
```
