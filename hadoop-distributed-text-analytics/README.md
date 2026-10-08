# 🐘 PageTurner Books Ltd. --- Linux, Bash & Hadoop Text Analytics

![Apache
Hadoop](https://img.shields.io/badge/Apache%20Hadoop-3.4.1-66CCFF?logo=apachehadoop&logoColor=black)
![HDFS](https://img.shields.io/badge/HDFS-Distributed%20Storage-1f77b4)
![YARN](https://img.shields.io/badge/YARN-Resource%20Management-orange)
![MapReduce](https://img.shields.io/badge/MapReduce-Distributed%20Processing-red)
![Python](https://img.shields.io/badge/Python-3.x-3776AB?logo=python&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-Linux-E95420?logo=ubuntu&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-Command%20Line-4EAA25?logo=gnubash&logoColor=white)

> A practical Linux and Big Data engineering project that moves from
> Bash-based business data organisation to distributed text analytics
> with Hadoop, HDFS, YARN, MapReduce, Hadoop Streaming and Python.

------------------------------------------------------------------------

## Table of Contents

1.  [Project Overview](#project-overview)
2.  [Project Objectives](#project-objectives)
3.  [Technology Stack](#technology-stack)
4.  [Dataset](#dataset)
5.  [Hadoop Architecture](#hadoop-architecture)
6.  [Project Workflow](#project-workflow)
7.  [Key Results](#key-results)
8.  [Project Files](#project-files)
9.  [Objective 1 --- Linux & Bash
    Foundations](#objective-1--linux--bash-foundations)
10. [Objective 2 --- PageTurner Books Data
    Organisation](#objective-2--pageturner-books-data-organisation)
11. [Objective 3 --- Hadoop
    Architecture](#objective-3--hadoop-architecture)
12. [Objective 4 --- Distributed Word-Frequency
    Analysis](#objective-4--distributed-word-frequency-analysis)
13. [Objective 5 --- Distributed Sentence-Count
    Analysis](#objective-5--distributed-sentence-count-analysis)
14. [Reproducibility](#reproducibility)
15. [Limitations and Considerations](#limitations-and-considerations)
16. [References](#references)
17. [Author](#author)
18. [Repository Structure](#repository-structure)

------------------------------------------------------------------------

## Project Overview

PageTurner Books Ltd. is exploring the use of Linux, Bash and
Hadoop-based big data technologies to organise business information and
analyse large digital book files.

The project begins in an Ubuntu environment and progresses from
command-line file and directory management through to distributed text
processing with Apache Hadoop.

Rather than separating the work into external documents, this repository
brings the project objectives, technical implementation, commands,
Python scripts, results and implementation evidence together in one
place.

------------------------------------------------------------------------

## Project Objectives

The original project brief can be understood as five practical goals:

### 1. Linux & Bash Foundations

Build a practical understanding of Bash in Linux: what it is, its
history, why it is useful in technical environments, how it compares
with a GUI, and how core commands such as `mkdir`, `cd`, `touch`, `cp`,
`echo` and `ls` are used.

### 2. PageTurner Books Data Organisation

Create a structured `PageTurnerBooks` storage system entirely from the
Ubuntu terminal, including the business directories, inventory files,
duplicated bestseller file and `store_info.md` company information.

### 3. Hadoop Architecture

Understand how HDFS, MapReduce, YARN and Hadoop Common fit together to
store, manage and process large datasets across a Hadoop cluster.

### 4. Distributed Word-Frequency Analysis

Build a Python MapReduce workflow that processes *A Christmas Carol*
through HDFS and Hadoop Streaming, then identify and rank the ten most
frequent words.

### 5. Distributed Sentence-Count Analysis

Build and locally validate a Python MapReduce workflow for *Moby Dick;
Or, The Whale*, run it through Hadoop Streaming and determine the total
number of sentences.

These objectives provide the project context without reproducing the
original assessment wording as the main structure.

------------------------------------------------------------------------

## Technology Stack

  -----------------------------------------------------------------------
  Technology / Library                Purpose
  ----------------------------------- -----------------------------------
  **Ubuntu Linux**                    Operating environment

  **Bash**                            Command-line file, directory and
                                      process management

  **Apache Hadoop 3.4.1**             Distributed data-processing
                                      framework

  **HDFS**                            Distributed storage

  **YARN**                            Resource management and job
                                      execution

  **MapReduce**                       Distributed processing model

  **Hadoop Streaming**                Runs Python mapper and reducer
                                      programs

  **Python 3**                        Mapper and reducer implementation

  **`sys`**                           Standard Python input processing

  **`re`**                            Regular-expression text processing

  **GNU/Linux utilities**             `ls`, `cat`, `sort`, `head`,
                                      `chmod`, `mv`, `cp`, `echo`, `jps`

  **Virtual machines**                Master/worker Hadoop environment
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## Dataset

  Dataset                      Purpose
  ---------------------------- -------------------------
  *A Christmas Carol*          Word-frequency analysis
  *Moby Dick; Or, The Whale*   Sentence-count analysis

The two literary texts are treated as unstructured text inputs and
transformed into structured key/value results through MapReduce.

------------------------------------------------------------------------

## Hadoop Architecture

### HDFS --- Hadoop Distributed File System

HDFS supplied the distributed storage layer. The book datasets were
uploaded from the Ubuntu filesystem into HDFS so Hadoop could access
them as cluster inputs, while generated outputs were also stored in
HDFS.

### MapReduce

MapReduce supplied the distributed processing model.

**Word frequency:**

``` text
Text → Mapper → word/1 pairs → Shuffle/Sort → Reducer → Word Frequencies
```

**Sentence count:**

``` text
Text → Mapper → sentence/1 records → Shuffle/Sort → Reducer → Total Sentences
```

### YARN --- Yet Another Resource Negotiator

YARN provided resource management and job execution for the Hadoop
Streaming workloads.

### Hadoop Common

Hadoop Common provides shared libraries and utilities used by the Hadoop
ecosystem.

### How the components worked together

``` text
Ubuntu / Bash
      │
      ▼
     HDFS
      │
      ▼
     YARN
      │
      ▼
   MapReduce
   ┌───┴────┐
   ▼        ▼
 Mapper   Reducer
      │
      ▼
Structured Output
```

------------------------------------------------------------------------

## Project Workflow

``` text
Ubuntu / Bash
      ↓
PageTurner Books Directory
      ↓
Hadoop Master / Worker Cluster
      ↓
HDFS Data Storage
      ↓
Python Mapper + Reducer
      ↓
Hadoop Streaming
      ↓
Distributed Processing
      ↓
Output Verification
      ↓
Text Analytics Results
```

------------------------------------------------------------------------

## Key Results

### *A Christmas Carol* --- Top 10 Words

    Rank Word      Frequency
  ------ ------- -----------
       1 `the`         1,791
       2 `and`         1,139
       3 `of`            865
       4 `a`             774
       5 `to`            761
       6 `in`            589
       7 `it`            560
       8 `he`            492
       9 `was`           427
      10 `his`           417

### *Moby Dick; Or, The Whale* --- Sentence Count

**10,941 sentences**

------------------------------------------------------------------------

## Project Files

``` text
README.md
code/
└── batch commands used in hadoop distributed text analytics.txt

data/
├── A Christmas Carol.txt
└── Moby Dick or The Whale.txt

word_count_mapper.py
word_count_reducer.py
total_sentences_mapper.py
total_sentences_reducer.py

visualizations/
└── implementation screenshots and evidence
```

------------------------------------------------------------------------

# Objective 1 --- Linux & Bash Foundations

### Objective

Build a practical understanding of Bash in Linux: what it is, its
history, why it is useful in technical environments, how it compares
with a GUI, and how core commands such as `mkdir`, `cd`, `touch`, `cp`,
`echo` and `ls` are used.

### Technical Documentation

The following preserves the substantive wording of the original
technical report while presenting it inside the portfolio as project
documentation.

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Read the Linux and Bash technical
documentation`</strong>`{=html}
```{=html}
</summary>
```
### Introduction

This section covers the requirements of Question 1 Task A, which entails
explaining what Bash is, the history of its creation, and how it fits
into the Linux systems. It also compares Bash with graphical user
interfaces (GUIs) and with how important Bash commands like mkdir, cd,
touch, cp, echo and ls can be used to manage files and directories at
PageTurner Books Ltd. \### Brief Overview of Bash Bash, also known as
the Bourne Again Shell is a command-line shell and scripting language
that is widely used in Unix and Linux operating systems (e.g., Ubuntu).
Bash was originally written for the GNU Project as a replacement for the
Bourne Shell and is known to be one of the standard command interpreters
for the Linux operating system. Bash acts as an intermediary between the
user and the operating system, enabling the user to interact with the
system by entering commands directly into the terminal, rather than
using graphical menus. \### Importance of Bash in Linux Systems Bash is
particularly crucial to Linux operating systems because it offers
system-level access and file management. As explored during the module
lectures, Linux operating systems are often used in virtualized
environments and Big Data systems because they are efficient, flexible,
and provide a level of access and control. Bash allows users to create
and manage files, manage directories, automate processes, and set up
environments by entering typed commands. \### Bash vs Graphical User
Interface (GUI) A Graphical User Interface (GUI) enables the user to
interact with a computer using icons, menus and windows. Bash can be
more effective for technical purposes than GUIs, though GUIs are often
easier to use. Bash has a faster approach to performing routine tasks,
can automate commands through scripts and consumes less system resources
than other interfaces. In Ubuntu systems, command-line tools are most
commonly used as they offer more accuracy and are more easily
replicated. For PageTurner Books Ltd, Bash offers a way to organise a
system of directories to organize company data. \### Key Bash Commands
Used • The "mkdir" command means "make directory" and is used to create
folders. In this assessment, it was used to create the main
`PageTurnerBooks` directory and subfolders such as inventory, customer,
and reviews.

• The "cd" command means "change directory" and allows users to move
between folders. In this assessment, it was used to move into
"PageTurnerBooks" and then into the inventory directory before creating
files.

• The "touch" command creates empty files. In this assessment, it was
used to create "book_catalog.csv", "bestsellers.txt", and
"store_info.md".

• The "cp" command means "copy" and duplicates files between locations.
In this assessment, it was used to copy the `bestsellers.txt` file from
the inventory into the reviews directory.

• The "echo" command outputs text to the terminal or inserts text into a
file. In this assessment, it was used to write a company introduction
into the "store_info.md" file.

• The "ls" command means "list" and displays files and folders within a
directory. In this assessment, it was used time to time to confirm that
directories and files had been created correctly.

### Conclusion

To sum up, Bash is an effective and efficient tool of communicating with
Linux systems via command-line operations. The fact that it can handle
files, automate, and operate with minimal system resources make it more
suitable than graphical interfaces in technical environments. The use of
commands such as: "mkdir, cd, touch, copy, echo, and ls" demonstrates
that Bash can be used to effectively plan and manage the data for
PageTurner Books Ltd.

```{=html}
</details>
```
### Supporting evidence

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}View implementation evidence`</strong>`{=html}
```{=html}
</summary>
```
![Bash / PageTurnerBooks evidence](visualizations/Q1_01_Create_PageTurnerBooks_Directory.png)

```{=html}
</details>
```

------------------------------------------------------------------------

# Objective 2 --- PageTurner Books Data Organisation

### Objective

Create a structured `PageTurnerBooks` storage system entirely from the
Ubuntu terminal, including the business directories, inventory files,
duplicated bestseller file and `store_info.md` company information.

### Technical Documentation

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Read the complete directory-setup
documentation`</strong>`{=html}
```{=html}
</summary>
```
### Introduction

This section will discuss the specifications of Question 1 Task B that
will enable the creation of a structured directory system of PageTurner
Books Ltd. using Bash commands only. The assignment shows how
command-line operations can be practically used to create directories,
work with files, and structure company data. All the steps are backed up
with screenshot evidence to demonstrate how the commands were
successfully executed and what the file structure was.

### Step 1: Creating a Directory called "PageTurnerBooks" in Home Directory

The initial step was to change the current directory in Ubuntu to the
home location by using the command "cd \~". This guarantees the main
business folder is stored in the user's home directory, as per the
assessment brief. The "mkdir PageTurnerBooks" command was used to create
the main directory, which will hold all of the company data. The "ls"
command was then used to confirm that the directory was created.

### Step 2: Creating Subdirectories inside the "PageTurnerBooks" directory

After entering the "PageTurnerBooks" folder using the "cd
PageTurnerBooks" command, a number of subdirectories were created to
categorise business data. The inventory, customer, orders, reviews, and
library folders were created with the "mkdir" command. This pattern
allows for business information to be categorised, increasing file
organisation and facilitating future growth. The "ls" command was then
used to verify that the folders had been created.

### Step 3: Creating two empty files in the Inventory directory

This was followed by changing the current directory to inventory via the
"cd inventory" command. The "touch" command was used to create two empty
files: "book_catalog.csv" and "bestsellers.txt". The CSV file provides
storage for structured inventory data, and the text file provides
storage for information containing bestselling books. The "ls" command
was then used to verify that both files were present in the inventory
directory.

### Step 4: Copying bestsellers.txt to the Reviews Directory

The "bestsellers.txt" file was copied into the reviews file using the
"cp" command. The copy command "cp bestsellers.txt ../reviews/" made a
duplicate and left the original file in the inventory folder. This is an
example of how Linux Bash commands can be used to copy information to
different destinations while maintaining the original file. I verified
the copying of the file by listing the contents of the inventory and
reviews folders using the "ls" command.

### Step 5: Returning to the "PageTurnerBooks" Root Directory and creating a

Markdown File The last step was to move up to the PageTurnerBooks
directory with the "cd .." command. A new Markdown file called
"store_info.md" was created with the "touch" command. A brief
description of the company was written to the file using the "echo"
command. Markdown is useful as it provides a simple way to format text
without being too complicated. The "cat" command was used to view the
contents of the file to ensure that the information was written
correctly.

### Conclusion

To sum up, the directory structure of PageTurner Books Ltd. was
successfully developed with the help of Bash commands. It was shown how
command-line applications can be utilised to systematise files and
directories effectively. This organised framework offers a scalable and
well organised method of handling business data.

### References

Griffiths, I. (2026a) MS4S21 Big Data Engineering and its Applications
-- Lecture 1. University of South Wales. Griffiths, I. (2026b) MS4S21
Big Data Engineering and its Applications -- Lecture 2. University of
South Wales. Free Software Foundation (2025) Bash Reference Manual. GNU
Operating System. Available at:
https://www.gnu.org/software/bash/manual/bash.html

```{=html}
</details>
```
### Supporting evidence

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the PageTurnerBooks
directory`</strong>`{=html}
```{=html}
</summary>
```
![Creating the PageTurnerBooks
directory](visualizations/Q1_01_Create_PageTurnerBooks_Directory.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the five business
subdirectories`</strong>`{=html}
```{=html}
</summary>
```
![Creating the five business
subdirectories](visualizations/Q1_02_Create_Project_Subdirectories.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the inventory files`</strong>`{=html}
```{=html}
</summary>
```
![Creating the inventory files](visualizations/Q1_03_Create_Inventory_Files.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Copying bestsellers.txt into reviews`</strong>`{=html}
```{=html}
</summary>
```
![Copying bestsellers.txt into
reviews](visualizations/Q1_04_Copy_Bestsellers_to_Reviews.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating and populating store_info.md`</strong>`{=html}
```{=html}
</summary>
```
![Creating and populating
store_info.md](visualizations/Q1_05_Create_and_Populate_Store_Info.png)

```{=html}
</details>
```

------------------------------------------------------------------------

# Objective 3 --- Hadoop Architecture

### Objective

Understand how HDFS, MapReduce, YARN and Hadoop Common fit together to
store, manage and process large datasets across a Hadoop cluster.

### Core Components

  -----------------------------------------------------------------------
  Component                           Role in the workflow
  ----------------------------------- -----------------------------------
  **HDFS**                            Stores the book datasets and
                                      generated Hadoop output

  **MapReduce**                       Processes the text using mapper and
                                      reducer stages

  **YARN**                            Manages cluster resources and job
                                      execution

  **Hadoop Common**                   Provides shared libraries and
                                      utilities used by Hadoop
  -----------------------------------------------------------------------

The cluster used a master and worker node. Hadoop services were started
on the master and verified on both machines using `jps`.

``` bash
start-dfs.sh
start-yarn.sh
jps
```

Worker:

``` bash
jps
```

### Supporting evidence

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Hadoop cluster verification`</strong>`{=html}
```{=html}
</summary>
```
![Hadoop cluster verification](visualizations/Q2_01_Start_Hadoop_and_Verify_Cluster.png)

```{=html}
</details>
```

------------------------------------------------------------------------

# Objective 4 --- Distributed Word-Frequency Analysis

### Objective

Build a Python MapReduce workflow that processes *A Christmas Carol*
through HDFS and Hadoop Streaming, then identify and rank the ten most
frequent words.

### Technical Documentation

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Read the complete word-frequency technical
documentation`</strong>`{=html}
```{=html}
</summary>
```
B.1: WORD FREQUENCY COUNT ("A CHRISTMAS CAROL") \### Introduction
PageTurner Books Ltd. expects to use big data analytics to gain
information about its book collection using Hadoop. The following task
utilizes Hadoop MapReduce to perform Word Frequency Analysis on A
Christmas Carol in order to gain insight into marketing the text and the
writing style used by the author. Practical implementation will consist
of writing Python-based mapper and reducer scripts, uploading the text
file into HDFS, running a Hadoop Streaming job, and analysing the
resulting output. In this report, every step of the working process will
be documented with the help of screen shots as evidence and, as a
result, the top 10 most frequent words will be identified.

### STEP 1: Starting Hadoop Services and Verifying Cluster Communication Between the

two machines: The Hadoop services were launched on the master machine by
use of the HDFS and YARN startup commands. This cluster was then checked
by ensuring that the master and worker virtual machines were
communicating well. On both machines, the Java process lists were
checked to ensure that the necessary services of Hadoop such as
NameNode, SecondaryNameNode, ResourceManager, DataNode and NodeManager
were successfully running before processing started.

``` bash
start-dfs.sh
start-yarn.sh
jps
```

``` bash
jps
```

### STEP 2: Creating and moving into working directory:

The working directory named Question2_Task_B1 was created to store all
the scripts, input files and outputs of the Word Frequency task.
Switching into the directory allowed keeping all the commands, mapper
scripts, reducer scripts, and generated outputs are retained in one
organized location.

``` bash
cd ~
mkdir Question2_Task_B1
cd Question2_Task_B1
pwd
```

### Step 3: Copying input file into working directory and confirming output:

The "A Christmas Carol" text file was copied from the Downloads folder
into the working directory. This enabled it to be accessed locally
before being uploaded to Hadoop. To verify that the input file had been
copied successfully into the directory, the ls command was used to
confirm the input file had been copied successfully into the directory.

``` bash
cp ~/Downloads/"A Christmas Carol.txt" .
ls
```

### Step 4: Creating a mapper script:

The mapper script was designed to read the text file line by line and
remove individual words from the content of the text file. The words
identified were all converted to lowercase, with a value of "1" attached
to the words. This step is the first step in the MapReduce workflow, in
which raw text is converted into key-value pairs, which can be
distributed across multiple computers to accomplish distributed
processing.

``` bash
nano word_count_mapper.py
```

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

### Step 5: Creating reducer script:

The reducer script was created to take in the key-value pairs that the
mapper generates and combine identical words into one total frequency
count. This process of aggregation enables Hadoop to compute the
frequency of occurrence of each word in the text.

``` bash
nano word_count_reducer.py
```

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

### Step 6: Making scripts executable:

Both the mapper and the reducer scripts were given execution permissions
with "chmod" commands. This was necessary to ensure Hadoop streaming is
able to identify and run the scripts in the processing. The output of
the command proves that it was possible to grant executable permissions.

``` bash
chmod +x word_count_mapper.py
chmod +x word_count_reducer.py
ls -l
```

### Step 7: Creating HDFS directory:

A special directory was made in the Hadoop Distributed File System
(HDFS) to keep the uploaded text file and the generated output. This
directory structure offers a structured, distributed storage for the
Hadoop workflow and stores all Word Frequency files in one place.

``` bash
hadoop fs -mkdir /user/ubong-etok/WordCount_ChristmasCarol
hadoop fs -ls /user/ubong-etok
```

### Step 8: Uploading file to HDFS and confirming the upload:

The text file was loaded into the HDFS so that it could be accessed and
processed by Hadoop on the cluster. Once uploaded, the files in the
directory in the HDFS were listed to ensure that the file had been
transferred successfully. This verification guarantees that the input
file can be accessed by Hadoop to process the file.

``` bash
hadoop fs -put A_Christmas_Carol.txt /user/ubong-etok/WordCount_ChristmasCarol/
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol
```

### Step 9: Running Hadoop Streaming:

The implementation of Hadoop streaming was done with the help of the
custom mapper and reducer scripts. In this step, Hadoop distributed the
processing task around the cluster and used the MapReduce workflow to
find out the frequency of words. The output shows successful completion
of the streaming and indicates the place where the generated output
directory is located. The Hadoop streaming enabled Python scripts to be
incorporated into the Hadoop MapReduce system, allowing custom mapper
and reducer programs to be run across the cluster. The mapper script is
executed first, followed by the reducer script, to generate intermediate
pairs of key-values in the first instance and to aggregate and combine
similar values in the second instance to produce final word frequency
counts.

``` bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B1/word_count_mapper.py,/home/ubong-
etok/Question2_Task_B1/word_count_reducer.py \
-mapper "python3 word_count_mapper.py" \
-reducer "python3 word_count_reducer.py" \
-input /user/ubong-etok/WordCount_ChristmasCarol/A_Christmas_Carol.txt \
-output /user/ubong-etok/WordCount_ChristmasCarol/output
```

### Step 10: Confirming Successful Creation of Hadoop Output Files in HDFS Directory:

The output directory created in HDFS was analyzed to ensure that Hadoop
was able to create the desired result files. The presence of the
part-00000 file and \_SUCCESS marker shows successful completion of the
Hadoop job, indicating that the word count results were written to
distributed storage with no errors.

``` bash
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol/output
```

### Step 11: Copying output to local system and checking output files:

The Hadoop output generated was transferred out of HDFS into the Ubuntu
local directory. This enabled the results to be obtained locally, where
inspection and reporting can take place. The output directory was then
inspected in order to ensure that the desired Hadoop output files were
in place.

``` bash
hadoop fs -get /user/ubong-etok/WordCount_ChristmasCarol/output
ls output
```

### Step 12: Viewing the Complete Word Frequency Output from Hadoop MapReduce:

The output file generated was opened and the entire list of words was
displayed with the number of times they appeared. This action reveals
that Hadoop was able to process the text file, and generate a complete
dataset that reveals the frequency of each word in the novel. The output
file part-00000 stores the final processed results.

``` bash
cat output/part-00000
```

### Step 13: Identifying top 10 words:

The output data was ranked in descending order in order to determine the
ten most common words within "A Christmas Carol.txt". This last step not
only gives us an idea of the most prevalent vocabulary featured in the
text, but also shows that Hadoop MapReduce is very effective in
processing large amounts of text. Sorting was done in descending order
using the Linux sort command.

``` bash
sort -k2 -nr output/part-00000 | head -10
```

### Conclusion

This task was able to illustrate how Hadoop MapReduce can be used to
perform Word Frequency Analysis on A Christmas Carol. The workflow
included writing mapper and reducer scripts, starting Hadoop services,
uploading the data to HDFS, running Hadoop streaming job, and analysing
the output generated. These results confirmed that Hadoop was effective
in processing the text file, giving precise word frequency counts that
were stored in the part-00000 output file with the "success" marker
confirming a successfully completed job. The most common words
recognized present valuable information about the typical vocabulary and
writing styles. In general, this activity underscores the ability of
Hadoop to convert unstructured text data to structured analytic output,
to support scalable analysis of keywords, marketing strategies and
recommendation systems for PageTurner Books Ltd.

```{=html}
</details>
```
### Supporting evidence

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Starting Hadoop services and verifying the
cluster`</strong>`{=html}
```{=html}
</summary>
```
![Starting Hadoop services and verifying the
cluster](visualizations/Q2_01_Start_Hadoop_and_Verify_Cluster.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the B.1 working directory`</strong>`{=html}
```{=html}
</summary>
```
![Creating the B.1 working directory](visualizations/Q2_02_Create_B1_Working_Directory.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Copying A Christmas Carol into the working
directory`</strong>`{=html}
```{=html}
</summary>
```
![Copying A Christmas Carol into the working
directory](visualizations/Q2_03_Copy_A_Christmas_Carol_Dataset.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the word-frequency mapper`</strong>`{=html}
```{=html}
</summary>
```
![Creating the word-frequency mapper](visualizations/Q2_04_Create_Word_Frequency_Mapper.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the word-frequency reducer`</strong>`{=html}
```{=html}
</summary>
```
![Creating the word-frequency reducer](visualizations/Q2_05_Create_Word_Frequency_Reducer.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Setting mapper and reducer
permissions`</strong>`{=html}
```{=html}
</summary>
```
![Setting mapper and reducer permissions](visualizations/Q2_06_Word_Frequency_Scripts_and_Permissions.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Verifying reducer code`</strong>`{=html}
```{=html}
</summary>
```
![Verifying reducer code](visualizations/Q2_07_Word_Frequency_Reducer_Code.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Verifying executable scripts`</strong>`{=html}
```{=html}
</summary>
```
![Verifying executable scripts](visualizations/Q2_08_Verify_Executable_Scripts.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the HDFS word-count
directory`</strong>`{=html}
```{=html}
</summary>
```
![Creating the HDFS word-count directory](visualizations/Q2_09_Create_Word_Count_HDFS_Directory.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Uploading A Christmas Carol to HDFS`</strong>`{=html}
```{=html}
</summary>
```
![Uploading A Christmas Carol to HDFS](visualizations/Q2_10_Upload_Christmas_Carol_to_HDFS.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Running Hadoop Streaming for word
frequency`</strong>`{=html}
```{=html}
</summary>
```
![Running Hadoop Streaming for word frequency](visualizations/Q2_11_Hadoop_Streaming_Execution_Output.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Verifying Hadoop output files`</strong>`{=html}
```{=html}
</summary>
```
![Verifying Hadoop output files](visualizations/Q2_12_Verify_HDFS_Output_Files.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Retrieving word-frequency output`</strong>`{=html}
```{=html}
</summary>
```
![Retrieving word-frequency output](visualizations/Q2_13_Retrieve_Word_Frequency_Output.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Viewing the complete word-frequency
output`</strong>`{=html}
```{=html}
</summary>
```
![Viewing the complete word-frequency output](visualizations/Q2_14_Complete_Word_Frequency_Output.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Identifying the top 10 word
frequencies`</strong>`{=html}
```{=html}
</summary>
```
![Identifying the top 10 word frequencies](visualizations/Q2_15_Top_10_Word_Frequencies.png)

```{=html}
</details>
```
### Result

The output was ranked using:

``` bash
sort -k2 -nr output/part-00000 | head -10
```

    Rank Word      Frequency
  ------ ------- -----------
       1 `the`         1,791
       2 `and`         1,139
       3 `of`            865
       4 `a`             774
       5 `to`            761
       6 `in`            589
       7 `it`            560
       8 `he`            492
       9 `was`           427
      10 `his`           417

------------------------------------------------------------------------

# Objective 5 --- Distributed Sentence-Count Analysis

### Objective

Build and locally validate a Python MapReduce workflow for *Moby Dick;
Or, The Whale*, run it through Hadoop Streaming and determine the total
number of sentences.

### Technical Documentation

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Read the complete sentence-count technical
documentation`</strong>`{=html}
```{=html}
</summary>
```
### Introduction

PageTurner Books Ltd. is implementing the engineering aspects of big
data to analyse large digital book files. This task requires one to find
the total number of sentences in "The Moby Dick or The Whale" using
Hadoop MapReduce. It is a real-world text processing problem in which an
unstructured text file is converted to a structured numerical output.
The input file to be used in this task is "The Moby Dick or The
Whale.txt", which was imported into the BDEA-master Ubuntu virtual
machine. In this report, every step of the working process will be
documented with the help of screen shots as evidence, and, as a result,
the total number of sentences will be identified.

### STEP 1: STARTING HADOOP SERVICES AND VERIFICATION OF CLUSTERS RUNNING

ON BOTH MACHINES The Hadoop services were launched on the master machine
by use of the HDFS and YARN startup commands. The Hadoop cluster was
confirmed by ensuring that the master and the worker virtual machines
were both started and connected. Hadoop services were initiated and
verified with the help of the Java process list. This step ensures that
the required Hadoop components, which include NameNode, DataNode,
ResourceManager, and NodeManager are functioning properly prior to the
process taking place.

``` bash
start-dfs.sh
start-yarn.sh
jps
Bash Code used on Worker:
jps
```

### STEP 2: CREATING AND MOVING INTO A WORKING DIRECTORY

A special working directory was prepared to store all the scripts, input
files, and output of Task B2. Relocating to the directory meant that all
files generated in the course of the task would be in one location to be
executed and recorded easily.

``` bash
cd ~
mkdir Question2_Task_B2
cd Question2_Task_B2
ls
```

### STEP 3: COPYING MOBY DICK INPUT FILE INTO WORKING DIRECTORY

"The Moby Dick or The Whale.txt" file was copied to the working
directory from the Virtual Machine Download folder. This made the text
file locally accessible and then uploaded into Hadoop. The ls command
was utilized to confirm successful file upload.

``` bash
cp ~/Downloads/"Moby Dick or The Whale.txt" .
ls
```

### STEP 4: CREATING MAPPER SCRIPT

The mapper script was designed to read the text file line by line and
recognise sentence- ending punctuation marks like full stops, question
marks, and exclamation marks. A count value of "1" was given to each
identified sentence as the first phase of the MapReduce process. As per
the assessment brief, AI tools were utilized to help in the development
of the "total_sentences_mapper.py" file for Task B2, assisting in the
development of the sentence- counting logic utilized within the script.

``` bash
nano total_sentences_mapper.py
```

``` python
#!/usr/bin/env python3
import sys
import re
for line in sys.stdin:
sentences = re.findall(r'[.!?]+', line)
for sentence in sentences:
print("sentence\t1")
```

### STEP 5: CREATING REDUCER SCRIPT

The reducer script was written to accept the counts of sentences
generated by the mapper and add them together to come up with an end
result aggregated total. This stage enabled Hadoop to calculate the
total number of sentences within the book efficiently. As per the
assessment brief, AI tools were utilized to help with the development of
the "total_sentences_reducer.py" file in Task B2, which would help to
structure the aggregation logic needed to obtain the final number of
sentences.

``` bash
nano total_sentences_reducer.py
```

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

### STEP 6: MAKING SCRIPTS EXECUTABLE

Both the mapper and reducer scripts were subjected to execution
permissions. This enabled the Hadoop Streaming to identify and run the
scripts during processing. The output verified that permissions were
indeed granted.

``` bash
chmod +x total_sentences_mapper.py
chmod +x total_sentences_reducer.py
ls -l
```

### STEP 7: USING THE "ECHO" COMMAND IN TESTING MAPPER AND REDUCER

FUNCTION BEFORE UPLOADING TO THE HADOOP STRUCTURE As per the assessment
brief, the "echo" command was used to test the mapper and reducer
functions before uploading files to the Hadoop cluster. Sample sentences
included in the assessment brief were put through the mapper and reducer
pipeline to ensure that sentence detection and counting were functioning
properly. This verification step ensured that the two scripts yielded
the desired output before running the Hadoop streaming job, to help
reduce errors during processing when the cluster is running. Local
testing of the mapper and reducer with the help of the echo command
minimized the risk of a failure in the execution of Hadoop due to the
verification of the scripts that should have created expected output
before the deployment of the mapper and reducer. This local validation
procedure was to verify the logic in both scripts to make sure that
before data is processed in the Hadoop system, the logic in the two
scripts is correct.

``` bash
echo "Hello! Welcome to Page Turner Books Ltd." | ./total_sentences_mapper.py |
./total_sentences_reducer.py
echo "Page Turner Books? Well, we are a great company!" | ./total_sentences_mapper.py |
./total_sentences_reducer.py
```

### STEP 8: CREATING HDFS DIRECTORY

A specific directory was created in HDFS to store the uploaded text file
and the output generated. This gave a hierarchical framework to
distributed storage in Hadoop.

``` bash
hdfs dfs -mkdir -p /user/ubong-etok
hadoop fs -mkdir MobyDick_Sentences
hadoop fs -ls
```

### STEP 9: UPLOADING FILE TO HADOOP

"The Moby Dick or The Whale.txt" was uploaded into HDFS so that Hadoop
could access and process it across the cluster. This moved the local
data to the distributed storage.

``` bash
mv *Whale* Moby_Dick_or_The_Whale.txt
hadoop fs -put Moby_Dick_or_The_Whale.txt /user/ubong-etok/MobyDick_Sentences/
```

### STEP 10: CONFIRMING UPLOAD OF FILE TO HADOOP.

The files in the HDFS directory were enumerated to ensure that the text
file were transferred successfully. This output confirms that the file
can be accessed by Hadoop in order to be processed.

``` bash
hadoop fs -ls /user/ubong-etok/MobyDick_Sentences/
```

### STEP 11: RUNNING HADOOP STREAMING

Hadoop streaming was implemented with the help of mapper and reducer
scripts. At this point, Hadoop spread the processing job throughout the
cluster and produced a final sentence count. The output is a
confirmation that the MapReduce job was completed successfully. Sentence
counts from mapper were merged into one total by reducer.

``` bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B2/total_sentences_mapper.py,/home/ubong-
etok/Question2_Task_B2/total_sentences_reducer.py \
-mapper "python3 total_sentences_mapper.py" \
-reducer "python3 total_sentences_reducer.py" \

-input /user/ubong-etok/MobyDick_Sentences/Moby_Dick_or_The_Whale.txt \
-output /user/ubong-etok/MobyDick_Sentences/output
```

### STEP 12: COPYING OUTPUT TO LOCAL SYSTEM

The Hadoop generated output was copied from HDFS back into the Ubuntu
local directory. This enabled the results to be reviewed and included
within the technical report.

``` bash
hdfs dfs -get /user/ubong-etok/MobyDick_Sentences/output ./output
```

``` bash
hdfs dfs -get /user/ubong-etok/MobyDick_Sentences/output ./output
```

### STEP 13: CHECKING OUTPUT FILES

The output directory was inspected to ensure that Hadoop was able to
produce the desired result files. The existence of part-000000 and
\_SUCCESS validated the successful completion of the job.

``` bash
ls output
```

### STEP 14: VIEWING OUTPUT

The output file created was opened to look at the final output. This
step confirmed that Hadoop was effective in computing the number of
sentences in the text uploaded.

``` bash
cat output/part-00000
```

### STEP 15: IDENTIFYING THE TOTAL NUMBER OF SENTENCES

This final step contained the total number of sentences that were
identified within "The Moby Dick or The Whale.txt" file. This gave an
understanding of the complexity of the text and showed how Hadoop can be
utilized to efficiently process large literary datasets.

### Conclusion

This report demonstrates the Hadoop MapReduce sentence-count task on the
novel "The Moby Dick or The Whale". The workflow was to prepare mapper
and reducer scripts, test them locally, upload the dataset to HDFS, and
run the Hadoop Streaming job. The mapper recognized the sentence
boundaries and the reducer summed up the counts to give a final total
number of sentences. The results confirm that Hadoop efficiently
processed the unstructured text file and generated a structured output.
The result of this analysis offers PageTurner Books Ltd. the potential
to scale up its approach to assessing the complexity of the text in
order to support reading-level classification, recommendation systems,
and targeted marketing to advanced readers.

### References

Apache Hadoop (2025) Hadoop Documentation. Available at:
https://hadoop.apache.org/docs/ Griffiths, I. (2026) MS4S21 Big Data
Engineering and its Applications -- Lecture 3 & 4. University of South
Wales. Dean, J. and Ghemawat, S. (2008) 'MapReduce: Simplified Data
Processing on Large Clusters', Communications of the ACM, 51(1),
pp. 107--113. OpenAI (2026) ChatGPT (GPT-5.3) used to support
development of Python mapper and reducer scripts for Hadoop sentence
counting. Available at: https://chat.openai.com/ (Accessed: 3 May 2026).

```{=html}
</details>
```
### Supporting evidence

```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Starting Hadoop for sentence counting`</strong>`{=html}
```{=html}
</summary>
```
![Starting Hadoop for sentence counting](visualizations/Q2_16_Start_Hadoop_for_Sentence_Count.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the B.2 working directory`</strong>`{=html}
```{=html}
</summary>
```
![Creating the B.2 working directory](visualizations/Q2_17_Create_B2_Working_Directory.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Copying Moby Dick into the working
directory`</strong>`{=html}
```{=html}
</summary>
```
![Copying Moby Dick into the working
directory](visualizations/Q2_18_Copy_Moby_Dick_Dataset.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the sentence-count mapper`</strong>`{=html}
```{=html}
</summary>
```
![Creating the sentence-count mapper](visualizations/Q2_19_Create_Sentence_Count_Mapper.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the sentence-count reducer`</strong>`{=html}
```{=html}
</summary>
```
![Creating the sentence-count reducer](visualizations/Q2_20_Create_Sentence_Count_Reducer.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Setting sentence-count permissions`</strong>`{=html}
```{=html}
</summary>
```
![Setting sentence-count permissions](visualizations/Q2_21_Sentence_Count_Scripts_and_Permissions.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Verifying sentence-count scripts`</strong>`{=html}
```{=html}
</summary>
```
![Verifying sentence-count scripts](visualizations/Q2_22_Verify_Sentence_Count_Scripts.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Local mapper/reducer validation with
echo`</strong>`{=html}
```{=html}
</summary>
```
![Local mapper/reducer validation with echo](visualizations/Q2_23_Local_Mapper_Reducer_Testing.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Creating the sentence-count HDFS
directory`</strong>`{=html}
```{=html}
</summary>
```
![Creating the sentence-count HDFS directory](visualizations/Q2_24_Create_Sentence_Count_HDFS_Directory.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Uploading Moby Dick to HDFS`</strong>`{=html}
```{=html}
</summary>
```
![Uploading Moby Dick to HDFS](visualizations/Q2_25_Upload_Moby_Dick_to_HDFS.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Confirming the Moby Dick HDFS upload`</strong>`{=html}
```{=html}
</summary>
```
![Confirming the Moby Dick HDFS upload](visualizations/Q2_26_Confirm_Moby_Dick_HDFS_Upload.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Running Hadoop Streaming for sentence
counting`</strong>`{=html}
```{=html}
</summary>
```
![Running Hadoop Streaming for sentence
counting](visualizations/Q2_27_Run_Sentence_Count_Hadoop_Streaming.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Viewing sentence-count streaming
output`</strong>`{=html}
```{=html}
</summary>
```
![Viewing sentence-count streaming output](visualizations/Q2_28_Sentence_Count_Streaming_Output.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Retrieving sentence-count output`</strong>`{=html}
```{=html}
</summary>
```
![Retrieving sentence-count output](visualizations/Q2_29_Retrieve_Sentence_Count_Output.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Verifying sentence-count output files`</strong>`{=html}
```{=html}
</summary>
```
![Verifying sentence-count output files](visualizations/Q2_30_Verify_Sentence_Count_Output_Files.png)

```{=html}
</details>
```
```{=html}
<details>
```
```{=html}
<summary>
```
`<strong>`{=html}Viewing the final sentence-count
output`</strong>`{=html}
```{=html}
</summary>
```
![Viewing the final sentence-count output](visualizations/Q2_31_Final_Sentence_Count_Output.png)

```{=html}
</details>
```

```
### Result

``` text
Total Sentences    10941
```

**Final sentence count: 10,941**

------------------------------------------------------------------------

## Reproducibility

The project can be reproduced in an Ubuntu environment with Apache
Hadoop configured as a master/worker cluster.

### Hadoop startup

Master:

``` bash
start-dfs.sh
start-yarn.sh
jps
```

Worker:

``` bash
jps
```

### Environment-specific paths

The original implementation used the Ubuntu username `ubong-etok` and
paths such as:

``` text
/home/ubong-etok/
```

These should be changed to the appropriate username and Hadoop
installation path when reproducing the project elsewhere.

### Validation

Validation included:

-   `ls` for local files and directories;
-   `jps` for Hadoop process verification;
-   `hadoop fs -ls` for HDFS verification;
-   local `echo` tests for the sentence-count workflow;
-   `_SUCCESS` and `part-00000` checks;
-   retrieval of Hadoop output to Ubuntu;
-   `cat` for result inspection; and
-   `sort -k2 -nr ... | head -10` for ranking word frequencies.

------------------------------------------------------------------------

## Limitations and Considerations

### Word frequency

The mapper converts text to lowercase and extracts alphabetic word
sequences. Common grammatical words therefore dominate the ranking. A
more advanced NLP workflow could add stop-word removal, stemming or
lemmatisation.

### Sentence detection

The sentence mapper uses:

``` python
r'[.!?]+'
```

This is a straightforward rule-based approach and may not perfectly
handle abbreviations, quotations or other literary punctuation
conventions.

### Environment

The Hadoop commands depend on the local Hadoop installation and Ubuntu
username, so paths may need to be adjusted for another environment.

### Scope

The project demonstrates focused MapReduce workflows rather than a
production recommendation or marketing platform.

------------------------------------------------------------------------

## References

-   Apache Hadoop (2025) *Hadoop Documentation*.
    https://hadoop.apache.org/docs/
-   Dean, J. and Ghemawat, S. (2008) 'MapReduce: Simplified Data
    Processing on Large Clusters', *Communications of the ACM*, 51(1),
    pp. 107--113.
-   Free Software Foundation (2025) *Bash Reference Manual*.
    https://www.gnu.org/software/bash/manual/bash.html
-   Griffiths, I. (2026a) *MS4S21 Big Data Engineering and its
    Applications -- Lecture 1*. University of South Wales.
-   Griffiths, I. (2026b) *MS4S21 Big Data Engineering and its
    Applications -- Lecture 2*. University of South Wales.
-   Griffiths, I. (2026) *MS4S21 Big Data Engineering and its
    Applications -- Lecture 3 & 4*. University of South Wales.
-   Project Gutenberg, *A Christmas Carol* by Charles Dickens.
-   Project Gutenberg, *Moby Dick; Or, The Whale* by Herman Melville.

### AI-assisted development

AI assistance was used specifically in the development of
`total_sentences_mapper.py` and `total_sentences_reducer.py` for the
sentence-count workflow. The scripts were then locally tested and
executed through Hadoop Streaming.

------------------------------------------------------------------------

## Author

**Ubong Etok**

GitHub: https://github.com/xzibitetok\
Portfolio: https://xzibitetok.github.io

------------------------------------------------------------------------

## Repository Structure

``` text
hadoop-distributed-text-analytics/
├── README.md
├── code/
│   └── batch commands used in hadoop distributed text analytics.txt
├── data/
│   ├── A Christmas Carol.txt
│   └── Moby Dick or The Whale.txt
├── visualizations/
│   ├── 01_main_directory.png
│   ├── 02_subdirectories.png
│   ├── 03_inventory_files.png
│   ├── 04_bestsellers_copy.png
│   ├── 05_store_info.png
│   └── q2_01...q2_32.*
├── word_count_mapper.py
├── word_count_reducer.py
├── total_sentences_mapper.py
└── total_sentences_reducer.py
```
