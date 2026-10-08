# PageTurner Books Ltd — Linux, Bash and Hadoop Technical Report

![Ubuntu](https://img.shields.io/badge/Ubuntu-Linux-E95420?logo=ubuntu&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-Shell-4EAA25?logo=gnu-bash&logoColor=white)
![Apache Hadoop](https://img.shields.io/badge/Apache%20Hadoop-3.4.1-66CCFF?logo=apachehadoop&logoColor=black)
![HDFS](https://img.shields.io/badge/HDFS-Distributed%20Storage-66CCFF)
![YARN](https://img.shields.io/badge/YARN-Resource%20Management-66CCFF)
![MapReduce](https://img.shields.io/badge/MapReduce-Distributed%20Processing-66CCFF)
![Python](https://img.shields.io/badge/Python-3.x-3776AB?logo=python&logoColor=white)

## Table of Contents

1. [Introduction](#introduction)
2. [Linux and Bash](#linux-and-bash)
   - [Brief Overview of Bash](#brief-overview-of-bash)
   - [Importance of Bash in Linux Systems](#importance-of-bash-in-linux-systems)
   - [Bash vs Graphical User Interface](#bash-vs-graphical-user-interface)
   - [Key Bash Commands Used](#key-bash-commands-used)
   - [Conclusion](#linux-and-bash-conclusion)
3. [PageTurner Books Directory Structure](#pageturner-books-directory-structure)
   - [Step 1 — Creating the PageTurnerBooks Directory](#step-1--creating-the-pageturnerbooks-directory)
   - [Step 2 — Creating Subdirectories](#step-2--creating-subdirectories)
   - [Step 3 — Creating Inventory Files](#step-3--creating-inventory-files)
   - [Step 4 — Copying bestsellers.txt to Reviews](#step-4--copying-bestsellerstxt-to-reviews)
   - [Step 5 — Creating and Populating store_info.md](#step-5--creating-and-populating-store_infomd)
   - [Resulting Directory Structure](#resulting-directory-structure)
4. [Hadoop and MapReduce](#hadoop-and-mapreduce)
   - [Hadoop Cluster Environment](#hadoop-cluster-environment)
5. [B.1 — Word Frequency Count: A Christmas Carol](#b1--word-frequency-count-a-christmas-carol)
   - [Introduction](#b1-introduction)
   - [Step 1 — Starting Hadoop Services](#b1-step-1--starting-hadoop-services)
   - [Step 2 — Creating the Working Directory](#b1-step-2--creating-the-working-directory)
   - [Step 3 — Copying the Input File](#b1-step-3--copying-the-input-file)
   - [Step 4 — Creating the Mapper Script](#b1-step-4--creating-the-mapper-script)
   - [Step 5 — Creating the Reducer Script](#b1-step-5--creating-the-reducer-script)
   - [Step 6 — Making the Scripts Executable](#b1-step-6--making-the-scripts-executable)
   - [Step 7 — Creating the HDFS Directory](#b1-step-7--creating-the-hdfs-directory)
   - [Step 8 — Uploading the File to HDFS](#b1-step-8--uploading-the-file-to-hdfs)
   - [Step 9 — Running Hadoop Streaming](#b1-step-9--running-hadoop-streaming)
   - [Step 10 — Confirming the Hadoop Output](#b1-step-10--confirming-the-hadoop-output)
   - [Step 11 — Copying Output to the Local System](#b1-step-11--copying-output-to-the-local-system)
   - [Step 12 — Viewing the Complete Output](#b1-step-12--viewing-the-complete-output)
   - [Step 13 — Identifying the Top 10 Words](#b1-step-13--identifying-the-top-10-words)
   - [B.1 Conclusion](#b1-conclusion)
6. [B.2 — Total Number of Sentences: The Moby Dick or The Whale](#b2--total-number-of-sentences-the-moby-dick-or-the-whale)
   - [Introduction](#b2-introduction)
   - [Step 1 — Starting Hadoop Services](#b2-step-1--starting-hadoop-services)
   - [Step 2 — Creating the Working Directory](#b2-step-2--creating-the-working-directory)
   - [Step 3 — Copying Moby Dick](#b2-step-3--copying-moby-dick)
   - [Step 4 — Creating the Mapper Script](#b2-step-4--creating-the-mapper-script)
   - [Step 5 — Creating the Reducer Script](#b2-step-5--creating-the-reducer-script)
   - [Step 6 — Making the Scripts Executable](#b2-step-6--making-the-scripts-executable)
   - [Step 7 — Local Mapper and Reducer Testing](#b2-step-7--local-mapper-and-reducer-testing)
   - [Step 8 — Creating the HDFS Directory](#b2-step-8--creating-the-hdfs-directory)
   - [Step 9 — Uploading the File to HDFS](#b2-step-9--uploading-the-file-to-hdfs)
   - [Step 10 — Confirming the HDFS Upload](#b2-step-10--confirming-the-hdfs-upload)
   - [Step 11 — Running Hadoop Streaming](#b2-step-11--running-hadoop-streaming)
   - [Step 12 — Copying Output to the Local System](#b2-step-12--copying-output-to-the-local-system)
   - [Step 13 — Checking Output Files](#b2-step-13--checking-output-files)
   - [Step 14 — Viewing the Output](#b2-step-14--viewing-the-output)
   - [Step 15 — Identifying the Total Number of Sentences](#b2-step-15--identifying-the-total-number-of-sentences)
   - [B.2 Conclusion](#b2-conclusion)
7. [Results](#results)
8. [Screenshot Evidence](#screenshot-evidence)
9. [Repository Structure](#repository-structure)
10. [References](#references)
11. [Author](#author)

---

## Introduction

PageTurner Books Ltd. is exploring the use of Linux, Bash and Hadoop-based big data technologies to organise business information and analyse large digital book files.

The work described in this repository covers two connected areas:

- organising PageTurner Books Ltd. data using Bash commands in Ubuntu; and
- using Hadoop MapReduce and Hadoop Streaming to analyse literary text.

The practical implementation was carried out in an Ubuntu virtual-machine environment using a Hadoop master/worker cluster. The workflow progressed from creating the required Linux directory structure, through preparing Python mapper and reducer programs, to storing datasets in HDFS, executing distributed Hadoop Streaming jobs and examining the resulting output.

The two Hadoop analyses were:

1. **Word frequency analysis of _A Christmas Carol_**
2. **Total sentence count of _The Moby Dick or The Whale_**

The following sections document the complete process, commands, scripts, outputs and screenshot evidence.

---

# Linux and Bash

## Brief Overview of Bash

Bash, also known as the **Bourne Again Shell**, is a command-line shell and scripting language widely used in Unix and Linux operating systems such as Ubuntu.

Bash was originally written for the GNU Project as a replacement for the Bourne Shell and became one of the standard command interpreters used with Linux operating systems.

Bash acts as an intermediary between the user and the operating system. Instead of interacting with the computer through graphical menus, users can enter commands directly into the terminal to create, modify, inspect and manage files and directories.

## Importance of Bash in Linux Systems

Bash is particularly important in Linux because it provides direct system-level access and supports file management, automation and environment configuration.

Linux operating systems are widely used in virtualised environments and big data systems because they provide flexibility, efficiency and a high level of control. Bash supports these environments by allowing users to:

- create and manage directories;
- create and modify files;
- move between directories;
- copy files;
- inspect directory contents;
- automate repetitive operations; and
- execute technical workflows consistently.

For PageTurner Books Ltd., Bash provided the command-line environment used to organise business information and prepare the Ubuntu environment for Hadoop processing.

## Bash vs Graphical User Interface

A **Graphical User Interface (GUI)** allows users to interact with a computer through icons, menus, windows and other visual controls.

Bash can be more effective than a GUI for technical and administrative work, although GUIs can be easier for general users.

Bash provides several advantages:

- routine operations can be performed quickly;
- commands can be automated through scripts;
- commands are reproducible;
- less system resources are generally required than for a graphical environment; and
- command-line operations provide direct control over files, directories and processes.

In Ubuntu and Hadoop environments, command-line tools are particularly useful because technical procedures can be executed accurately and repeated when required.

## Key Bash Commands Used

| Command | Purpose | Use in the project |
|---|---|---|
| `mkdir` | Make a directory | Created `PageTurnerBooks` and its subdirectories |
| `cd` | Change directory | Moved between the project directories |
| `touch` | Create an empty file | Created `book_catalog.csv`, `bestsellers.txt` and `store_info.md` |
| `cp` | Copy a file | Copied `bestsellers.txt` into `reviews` |
| `echo` | Output/write text | Wrote the PageTurner Books description into `store_info.md` |
| `ls` | List directory contents | Verified directories and files |
| `cat` | Display file contents | Checked `store_info.md` and Hadoop output |
| `chmod` | Change file permissions | Made Python mapper/reducer scripts executable |
| `sort` | Sort text output | Ranked word-frequency results |
| `head` | Display the first lines | Selected the top 10 word frequencies |
| `mv` | Move/rename a file | Standardised the Moby Dick filename |
| `jps` | List Java processes | Verified Hadoop services |

## Linux and Bash Conclusion

Bash provides an effective way of communicating with Linux systems through command-line operations. Its ability to manage files, automate operations and work with relatively low system overhead makes it highly suitable for technical environments.

The use of commands such as `mkdir`, `cd`, `touch`, `cp`, `echo` and `ls` demonstrates how Bash can be used to plan and manage the data structure required by PageTurner Books Ltd.

---

# PageTurner Books Directory Structure

The PageTurner Books Ltd. directory structure was created entirely through Bash commands in Ubuntu.

The purpose was to establish a structured framework for different categories of business information.

## Step 1 — Creating the `PageTurnerBooks` Directory

The first step was to move to the Ubuntu home directory using `cd ~`.

The main `PageTurnerBooks` directory was then created with `mkdir PageTurnerBooks`. The `ls` command was used to confirm that the directory had been created.

### Bash commands

```bash
cd ~
mkdir PageTurnerBooks
ls
```

### Screenshot

![Creating PageTurnerBooks directory](visualizations/Q1_01_Create_PageTurnerBooks_Directory.png)

## Step 2 — Creating Subdirectories

After entering the `PageTurnerBooks` directory, five subdirectories were created:

- `inventory`
- `customer`
- `orders`
- `reviews`
- `library`

These folders provide separate areas for organising different types of company information.

### Bash commands

```bash
cd PageTurnerBooks
mkdir inventory customer orders reviews library
ls
```

### Screenshot

![Creating project subdirectories](visualizations/Q1_02_Create_Project_Subdirectories.png)

## Step 3 — Creating Inventory Files

The `inventory` directory was opened and two empty files were created:

- `book_catalog.csv`
- `bestsellers.txt`

The CSV file provides a location for structured inventory information, while the text file provides a location for bestselling-book information.

### Bash commands

```bash
cd inventory
touch book_catalog.csv
touch bestsellers.txt
ls
```

### Screenshot

![Creating inventory files](visualizations/Q1_03_Create_Inventory_Files.png)

## Step 4 — Copying `bestsellers.txt` to Reviews

The `bestsellers.txt` file was copied from the `inventory` directory into the `reviews` directory.

The original file remained in `inventory`, while a duplicate was created in `reviews`.

### Bash commands

```bash
cp bestsellers.txt ../reviews/
ls
ls ../reviews/
```

### Screenshot

![Copying bestsellers.txt to reviews](visualizations/Q1_04_Copy_Bestsellers_to_Reviews.png)

## Step 5 — Creating and Populating `store_info.md`

The `cd ..` command was used to return to the `PageTurnerBooks` root directory.

A Markdown file named `store_info.md` was then created and populated with a short description of the company.

### Bash commands

```bash
cd ..
touch store_info.md
echo "PageTurner Books Ltd is an independent bookstore based in Manchester specializing in fiction, non-fiction, and rare books." > store_info.md
cat store_info.md
```

### Screenshot

![Creating and populating store_info.md](visualizations/Q1_05_Create_and_Populate_Store_Info.png)

## Resulting Directory Structure

```text
PageTurnerBooks/
├── inventory/
│   ├── book_catalog.csv
│   └── bestsellers.txt
├── customer/
├── orders/
├── reviews/
│   └── bestsellers.txt
├── library/
└── store_info.md
```

## PageTurner Books Directory Conclusion

The directory structure of PageTurner Books Ltd. was successfully developed using Bash commands. The practical work demonstrated how command-line operations can be used to organise files and directories systematically.

The resulting framework provides a structured and scalable basis for handling different categories of business data.

---

# Hadoop and MapReduce

Hadoop was used to process the literary datasets through a distributed MapReduce workflow.

The Hadoop environment consisted of a **master machine** and a **worker machine**. HDFS was used for distributed storage, while YARN was used to manage cluster resources and execute processing jobs.

The Python mapper and reducer programs were connected to Hadoop through **Hadoop Streaming**.

## Hadoop Cluster Environment

Before either analysis was performed, the Hadoop services were started on the master machine.

The cluster was then verified using the Java process list on both machines.

### Master machine

```bash
start-dfs.sh
start-yarn.sh
jps
```

### Worker machine

```bash
jps
```

The `jps` output was used to verify the Hadoop Java processes, including services such as:

- NameNode
- SecondaryNameNode
- DataNode
- ResourceManager
- NodeManager

The cluster was verified before processing began.

---

# B.1 — Word Frequency Count: A Christmas Carol

## B.1 Introduction

PageTurner Books Ltd. can use big data analytics to gain information about its digital book collection.

The first Hadoop workflow used **MapReduce** to perform word frequency analysis on _A Christmas Carol_. The purpose was to convert the unstructured literary text into structured word-frequency data and identify the ten most frequently occurring words.

The practical workflow consisted of:

1. starting Hadoop;
2. preparing a working directory;
3. copying the dataset;
4. creating a Python mapper;
5. creating a Python reducer;
6. making the scripts executable;
7. creating an HDFS directory;
8. uploading the dataset to HDFS;
9. running Hadoop Streaming;
10. verifying the generated output;
11. retrieving the output locally;
12. viewing the complete frequency output; and
13. ranking the top 10 words.

## B.1 Step 1 — Starting Hadoop Services

HDFS and YARN were started on the master machine. The Java process list was then checked on both machines to confirm that the Hadoop cluster was running and that the master and worker were communicating.

### Bash commands — Master

```bash
start-dfs.sh
start-yarn.sh
jps
```

### Bash command — Worker

```bash
jps
```

### Screenshot

![Starting Hadoop and verifying cluster](visualizations/Q2_01_Start_Hadoop_and_Verify_Cluster.png)

## B.1 Step 2 — Creating the Working Directory

A dedicated working directory called `Question2_Task_B1` was created to hold the mapper, reducer, input file and generated output.

### Bash commands

```bash
cd ~
mkdir Question2_Task_B1
cd Question2_Task_B1
pwd
```

### Screenshot

![Creating B1 working directory](visualizations/Q2_02_Create_B1_Working_Directory.png)

## B.1 Step 3 — Copying the Input File

The `A Christmas Carol.txt` dataset was copied from the Ubuntu Downloads directory into the working directory.

### Bash commands

```bash
cp ~/Downloads/"A Christmas Carol.txt" .
ls
```

### Screenshot

![Copying A Christmas Carol dataset](visualizations/Q2_03_Copy_A_Christmas_Carol_Dataset.png)

## B.1 Step 4 — Creating the Mapper Script

The mapper was designed to read the input text line by line, convert the text to lowercase, identify words and output each word with a count of `1`.

This produces intermediate key-value pairs in the form:

```text
word    1
```

### Bash command

```bash
nano word_count_mapper.py
```

### `word_count_mapper.py`

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

### Screenshot

![Creating word frequency mapper](visualizations/Q2_04_Create_Word_Frequency_Mapper.png)

## B.1 Step 5 — Creating the Reducer Script

The reducer receives the key-value pairs generated by the mapper and combines identical words to calculate their total frequency.

### Bash command

```bash
nano word_count_reducer.py
```

### `word_count_reducer.py`

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

### Screenshots

![Creating word frequency reducer](visualizations/Q2_05_Create_Word_Frequency_Reducer.png)

![Word frequency scripts and permissions](visualizations/Q2_06_Word_Frequency_Scripts_and_Permissions.png)

![Word frequency reducer code](visualizations/Q2_07_Word_Frequency_Reducer_Code.png)

## B.1 Step 6 — Making the Scripts Executable

Both Python scripts were given executable permissions so they could be used by Hadoop Streaming.

### Bash commands

```bash
chmod +x word_count_mapper.py
chmod +x word_count_reducer.py
ls -l
```

### Screenshots

![Verifying executable scripts](visualizations/Q2_08_Verify_Executable_Scripts.png)

## B.1 Step 7 — Creating the HDFS Directory

A dedicated HDFS directory was created to store the uploaded dataset and the Hadoop output.

### Bash commands

```bash
hadoop fs -mkdir /user/ubong-etok/WordCount_ChristmasCarol
hadoop fs -ls /user/ubong-etok
```

### Screenshot

![Creating HDFS word count directory](visualizations/Q2_09_Create_Word_Count_HDFS_Directory.png)

## B.1 Step 8 — Uploading the File to HDFS

The dataset was uploaded into the HDFS directory. The directory was then listed to confirm that the file had been transferred successfully.

### Bash commands

```bash
hadoop fs -put A_Christmas_Carol.txt /user/ubong-etok/WordCount_ChristmasCarol/
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol
```

### Screenshot

![Uploading A Christmas Carol to HDFS](visualizations/Q2_10_Upload_Christmas_Carol_to_HDFS.png)

## B.1 Step 9 — Running Hadoop Streaming

Hadoop Streaming was used to connect the Python mapper and reducer scripts to the Hadoop MapReduce framework.

The mapper first generated intermediate word/count pairs. Hadoop then grouped the keys and passed them to the reducer, which aggregated the counts.

### Bash command

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B1/word_count_mapper.py,/home/ubong-etok/Question2_Task_B1/word_count_reducer.py \
-mapper "python3 word_count_mapper.py" \
-reducer "python3 word_count_reducer.py" \
-input /user/ubong-etok/WordCount_ChristmasCarol/A_Christmas_Carol.txt \
-output /user/ubong-etok/WordCount_ChristmasCarol/output
```

### Screenshot

![Running Hadoop Streaming](visualizations/Q2_11_Hadoop_Streaming_Execution_Output.png)

## B.1 Step 10 — Confirming the Hadoop Output

The generated HDFS output directory was inspected.

The presence of `part-00000` and `_SUCCESS` indicated that Hadoop had generated the expected output and that the job completed successfully.

### Bash command

```bash
hadoop fs -ls /user/ubong-etok/WordCount_ChristmasCarol/output
```

### Screenshot

![Verifying HDFS output files](visualizations/Q2_12_Verify_HDFS_Output_Files.png)

## B.1 Step 11 — Copying Output to the Local System

The Hadoop output was copied from HDFS back into the local Ubuntu working directory so that it could be inspected.

### Bash commands

```bash
hadoop fs -get /user/ubong-etok/WordCount_ChristmasCarol/output
ls output
```

### Screenshot

![Retrieving word frequency output](visualizations/Q2_13_Retrieve_Word_Frequency_Output.png)

## B.1 Step 12 — Viewing the Complete Output

The `part-00000` file was opened to display the complete set of word-frequency results.

### Bash command

```bash
cat output/part-00000
```

The generated `part-00000` file contains the final word-frequency results produced by the MapReduce job.

### Screenshot

![Complete word frequency output](visualizations/Q2_14_Complete_Word_Frequency_Output.png)

## B.1 Step 13 — Identifying the Top 10 Words

The complete frequency output was ranked in descending order using the Linux `sort` command. The first ten entries were then selected using `head`.

### Bash command

```bash
sort -k2 -nr output/part-00000 | head -10
```

### Top 10 word frequencies

| Rank | Word | Frequency |
|---:|---|---:|
| 1 | the | 1,791 |
| 2 | and | 1,139 |
| 3 | of | 865 |
| 4 | a | 774 |
| 5 | to | 761 |
| 6 | in | 589 |
| 7 | it | 560 |
| 8 | he | 492 |
| 9 | was | 427 |
| 10 | his | 417 |

### Screenshot

![Top 10 word frequencies](visualizations/Q2_15_Top_10_Word_Frequencies.png)

## B.1 Conclusion

The word-frequency workflow demonstrated how Hadoop MapReduce can be used to process _A Christmas Carol_.

The workflow involved preparing mapper and reducer scripts, starting Hadoop services, uploading the dataset to HDFS, executing a Hadoop Streaming job and analysing the resulting output.

The results were stored in `part-00000`, with the `_SUCCESS` marker confirming successful completion of the Hadoop job.

The most frequently occurring words provide information about the vocabulary used in the text and demonstrate how unstructured literary data can be converted into structured analytical output.

The approach can be extended to larger collections of books for keyword analysis, marketing analysis and recommendation-system applications for PageTurner Books Ltd.

---

# B.2 — Total Number of Sentences: The Moby Dick or The Whale

## B.2 Introduction

The second Hadoop workflow was designed to calculate the total number of sentences in _The Moby Dick or The Whale_.

This is a text-processing problem in which an unstructured digital book is converted into a structured numerical result using Hadoop MapReduce.

The input file, `The Moby Dick or The Whale.txt`, was imported into the BDEA-master Ubuntu virtual machine.

The workflow consisted of:

1. starting and verifying Hadoop;
2. creating a working directory;
3. copying the dataset;
4. creating the sentence-count mapper;
5. creating the sentence-count reducer;
6. making both scripts executable;
7. testing the mapper and reducer locally;
8. creating the HDFS directory;
9. uploading the dataset;
10. confirming the upload;
11. running Hadoop Streaming;
12. retrieving the output;
13. checking the output files;
14. viewing the output; and
15. identifying the final sentence count.

## B.2 Step 1 — Starting Hadoop Services

HDFS and YARN were started on the master machine. The cluster was then verified on both master and worker machines using `jps`.

### Master machine

```bash
start-dfs.sh
start-yarn.sh
jps
```

### Worker machine

```bash
jps
```

The process list was used to confirm the required Hadoop components were running.

### Screenshot

![Starting Hadoop for sentence count](visualizations/Q2_16_Start_Hadoop_for_Sentence_Count.png)

## B.2 Step 2 — Creating the Working Directory

A dedicated working directory named `Question2_Task_B2` was created to contain the input data, Python scripts and output.

### Bash commands

```bash
cd ~
mkdir Question2_Task_B2
cd Question2_Task_B2
ls
```

### Screenshot

![Creating B2 working directory](visualizations/Q2_17_Create_B2_Working_Directory.png)

## B.2 Step 3 — Copying Moby Dick

The Moby Dick dataset was copied from the Downloads directory into the working directory.

### Bash commands

```bash
cp ~/Downloads/"Moby Dick or The Whale.txt" .
ls
```

### Screenshot

![Copying Moby Dick dataset](visualizations/Q2_18_Copy_Moby_Dick_Dataset.png)

## B.2 Step 4 — Creating the Mapper Script

The mapper was designed to identify sentence-ending punctuation marks — full stops, question marks and exclamation marks.

Each identified sentence boundary produced a key-value pair with a count of `1`.

The development of this B.2 mapper was supported by AI tools, followed by local testing and execution within the Hadoop workflow.

### Bash command

```bash
nano total_sentences_mapper.py
```

### `total_sentences_mapper.py`

```python
#!/usr/bin/env python3

import sys
import re

for line in sys.stdin:
    sentences = re.findall(r'[.!?]+', line)

    for sentence in sentences:
        print("sentence\t1")
```

### Screenshot

![Creating sentence count mapper](visualizations/Q2_19_Create_Sentence_Count_Mapper.png)

## B.2 Step 5 — Creating the Reducer Script

The reducer receives the sentence counts produced by the mapper and adds them together to produce one final total.

The development of this B.2 reducer was also supported by AI tools.

### Bash command

```bash
nano total_sentences_reducer.py
```

### `total_sentences_reducer.py`

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

### Screenshot

![Creating sentence count reducer](visualizations/Q2_20_Create_Sentence_Count_Reducer.png)

## B.2 Step 6 — Making the Scripts Executable

Both scripts were given executable permissions.

### Bash commands

```bash
chmod +x total_sentences_mapper.py
chmod +x total_sentences_reducer.py
ls -l
```

### Screenshot

![Sentence count scripts and permissions](visualizations/Q2_21_Sentence_Count_Scripts_and_Permissions.png)

![Verifying sentence count scripts](visualizations/Q2_22_Verify_Sentence_Count_Scripts.png)

## B.2 Step 7 — Local Mapper and Reducer Testing

Before uploading the dataset to Hadoop, the mapper and reducer were tested locally using the sample sentences.

The first sample was:

> Hello! Welcome to Page Turner Books Ltd.

The second sample was:

> Page Turner Books? Well, we are a great company!

The `echo` command passed each sample through the mapper and reducer pipeline.

### Bash commands

```bash
echo "Hello! Welcome to Page Turner Books Ltd." | ./total_sentences_mapper.py | ./total_sentences_reducer.py
echo "Page Turner Books? Well, we are a great company!" | ./total_sentences_mapper.py | ./total_sentences_reducer.py
```

This local validation was performed before the Hadoop job so that the sentence-detection and aggregation logic could be checked before distributed processing.

### Screenshot

![Local mapper and reducer testing](visualizations/Q2_23_Local_Mapper_Reducer_Testing.png)

## B.2 Step 8 — Creating the HDFS Directory

The HDFS structure was prepared to store the Moby Dick dataset and generated output.

### Bash commands

```bash
hdfs dfs -mkdir -p /user/ubong-etok
hadoop fs -mkdir MobyDick_Sentences
hadoop fs -ls
```

### Screenshot

![Creating sentence count HDFS directory](visualizations/Q2_24_Create_Sentence_Count_HDFS_Directory.png)

## B.2 Step 9 — Uploading the File to HDFS

The dataset filename was standardised and then uploaded into HDFS.

### Bash commands

```bash
mv *Whale* Moby_Dick_or_The_Whale.txt
hadoop fs -put Moby_Dick_or_The_Whale.txt /user/ubong-etok/MobyDick_Sentences/
```

### Screenshot

![Uploading Moby Dick to HDFS](visualizations/Q2_25_Upload_Moby_Dick_to_HDFS.png)

## B.2 Step 10 — Confirming the HDFS Upload

The HDFS directory was listed to verify that the Moby Dick input file had been successfully transferred.

### Bash command

```bash
hadoop fs -ls /user/ubong-etok/MobyDick_Sentences/
```

### Screenshot

![Confirming Moby Dick HDFS upload](visualizations/Q2_26_Confirm_Moby_Dick_HDFS_Upload.png)

## B.2 Step 11 — Running Hadoop Streaming

Hadoop Streaming was used to execute the Python mapper and reducer across the Hadoop cluster.

The mapper generated sentence-count pairs and the reducer aggregated those counts into a single total.

### Bash command

```bash
yarn jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.4.1.jar \
-files /home/ubong-etok/Question2_Task_B2/total_sentences_mapper.py,/home/ubong-etok/Question2_Task_B2/total_sentences_reducer.py \
-mapper "python3 total_sentences_mapper.py" \
-reducer "python3 total_sentences_reducer.py" \
-input /user/ubong-etok/MobyDick_Sentences/Moby_Dick_or_The_Whale.txt \
-output /user/ubong-etok/MobyDick_Sentences/output
```

### Screenshot

![Running sentence count Hadoop Streaming](visualizations/Q2_27_Run_Sentence_Count_Hadoop_Streaming.png)

## B.2 Step 12 — Copying Output to the Local System

The generated Hadoop output was copied from HDFS into the local Ubuntu directory for inspection.

### Bash command

```bash
hdfs dfs -get /user/ubong-etok/MobyDick_Sentences/output ./output
```

### Screenshot

![Retrieving sentence count output](visualizations/Q2_29_Retrieve_Sentence_Count_Output.png)

## B.2 Step 13 — Checking Output Files

The local output directory was inspected to verify that Hadoop had produced the expected result files.

### Bash command

```bash
ls output
```

The output included the Hadoop result file and the `_SUCCESS` marker.

### Screenshot

![Checking sentence count output files](visualizations/Q2_30_Verify_Sentence_Count_Output_Files.png)

## B.2 Step 14 — Viewing the Output

The final MapReduce output was opened using `cat`.

### Bash command

```bash
cat output/part-00000
```

### Screenshot

![Viewing sentence count output](visualizations/Q2_28_Sentence_Count_Streaming_Output.png)

## B.2 Step 15 — Identifying the Total Number of Sentences

The final output reported:

```text
Total Sentences    10941
```

Therefore, the total number of sentences identified in _The Moby Dick or The Whale_ dataset was:

## **10,941 sentences**

### Screenshot

![Final sentence count](visualizations/Q2_31_Final_Sentence_Count_Output.png)

## B.2 Conclusion

The sentence-count workflow demonstrated how Hadoop MapReduce can process an unstructured literary text and generate a structured numerical result.

The workflow involved preparing mapper and reducer scripts, testing them locally, uploading the dataset to HDFS and running the Hadoop Streaming job.

The mapper recognised sentence-ending punctuation and generated individual sentence counts, while the reducer summed those counts to produce the final total.

The resulting count of **10,941 sentences** demonstrates the ability of Hadoop to process a large digital text file using a distributed workflow.

This type of analysis could potentially support further applications such as assessing text complexity, reading-level classification, recommendation systems and targeted marketing to advanced readers.

---

# Results

## Word Frequency — A Christmas Carol

The Hadoop MapReduce word-frequency workflow produced the following top 10 results:

| Rank | Word | Frequency |
|---:|---|---:|
| 1 | the | 1,791 |
| 2 | and | 1,139 |
| 3 | of | 865 |
| 4 | a | 774 |
| 5 | to | 761 |
| 6 | in | 589 |
| 7 | it | 560 |
| 8 | he | 492 |
| 9 | was | 427 |
| 10 | his | 417 |

## Sentence Count — Moby Dick

The Hadoop MapReduce sentence-count workflow produced:

```text
Total Sentences    10941
```

**Final result: 10,941 sentences.**

---

# Screenshot Evidence

The practical workflow was documented with terminal screenshots showing the commands used and the resulting output.

## Linux and Bash

1. `Q1_01_Create_PageTurnerBooks_Directory.png`
2. `Q1_02_Create_Project_Subdirectories.png`
3. `Q1_03_Create_Inventory_Files.png`
4. `Q1_04_Copy_Bestsellers_to_Reviews.png`
5. `Q1_05_Create_and_Populate_Store_Info.png`

## A Christmas Carol — Word Frequency

1. `Q2_01_Start_Hadoop_and_Verify_Cluster.png`
2. `Q2_02_Create_B1_Working_Directory.png`
3. `Q2_03_Copy_A_Christmas_Carol_Dataset.png`
4. `Q2_04_Create_Word_Frequency_Mapper.png`
5. `Q2_05_Create_Word_Frequency_Reducer.png`
6. `Q2_06_Word_Frequency_Scripts_and_Permissions.png`
7. `Q2_07_Word_Frequency_Reducer_Code.png`
8. `Q2_08_Verify_Executable_Scripts.png`
9. `Q2_09_Create_Word_Count_HDFS_Directory.png`
10. `Q2_10_Upload_Christmas_Carol_to_HDFS.png`
11. `Q2_11_Hadoop_Streaming_Execution_Output.png`
12. `Q2_12_Verify_HDFS_Output_Files.png`
13. `Q2_13_Retrieve_Word_Frequency_Output.png`
14. `Q2_14_Complete_Word_Frequency_Output.png`
15. `Q2_15_Top_10_Word_Frequencies.png`

## Moby Dick — Sentence Count

1. `Q2_16_Start_Hadoop_for_Sentence_Count.png`
2. `Q2_17_Create_B2_Working_Directory.png`
3. `Q2_18_Copy_Moby_Dick_Dataset.png`
4. `Q2_19_Create_Sentence_Count_Mapper.png`
5. `Q2_20_Create_Sentence_Count_Reducer.png`
6. `Q2_21_Sentence_Count_Scripts_and_Permissions.png`
7. `Q2_22_Verify_Sentence_Count_Scripts.png`
8. `Q2_23_Local_Mapper_Reducer_Testing.png`
9. `Q2_24_Create_Sentence_Count_HDFS_Directory.png`
10. `Q2_25_Upload_Moby_Dick_to_HDFS.png`
11. `Q2_26_Confirm_Moby_Dick_HDFS_Upload.png`
12. `Q2_27_Run_Sentence_Count_Hadoop_Streaming.png`
13. `Q2_28_Sentence_Count_Streaming_Output.png`
14. `Q2_29_Retrieve_Sentence_Count_Output.png`
15. `Q2_30_Verify_Sentence_Count_Output_Files.png`
16. `Q2_31_Final_Sentence_Count_Output.png`

---

# Repository Structure

The project repository is organised as follows:

```text
hadoop-distributed-text-analytics/
├── README.md
├── code/
│   └── batch commands used in hadoop distributed text analytics.txt
├── data/
│   ├── A Christmas Carol.txt
│   └── Moby Dick or The Whale.txt
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

# References

Apache Hadoop (2025). *Hadoop Documentation*. Available at:  
https://hadoop.apache.org/docs/

Dean, J. and Ghemawat, S. (2008). ‘MapReduce: Simplified Data Processing on Large Clusters’, *Communications of the ACM*, 51(1), pp. 107–113.

Free Software Foundation (2025). *Bash Reference Manual*. GNU Operating System. Available at:  
https://www.gnu.org/software/bash/manual/bash.html

Griffiths, I. (2026a). *MS4S21 Big Data Engineering and its Applications – Lecture 1*. University of South Wales.

Griffiths, I. (2026b). *MS4S21 Big Data Engineering and its Applications – Lecture 2*. University of South Wales.

Griffiths, I. (2026). *MS4S21 Big Data Engineering and its Applications – Lecture 3 & 4*. University of South Wales.

OpenAI (2026). *ChatGPT (GPT-5.3)*. Used to support development of the Python mapper and reducer scripts for Hadoop sentence counting. Available at:  
https://chat.openai.com/  
Accessed: 3 May 2026.

---

# Author

**Ubong Etok**

GitHub: https://github.com/xzibitetok

Portfolio: https://xzibitetok.github.io

---

## Project Summary

This project demonstrates an end-to-end workflow beginning with Linux and Bash file-system organisation in Ubuntu and progressing to distributed text processing with Apache Hadoop.

The implementation covered:

- Bash-based directory and file management;
- PageTurner Books Ltd. data organisation;
- Hadoop cluster startup and verification;
- HDFS data storage;
- Python MapReduce mapper and reducer development;
- Hadoop Streaming;
- word-frequency analysis of _A Christmas Carol_;
- sentence counting of _The Moby Dick or The Whale_;
- local validation of the sentence-count scripts;
- HDFS output verification;
- retrieval and inspection of MapReduce results; and
- extraction of final analytical results.

The final analytical outputs were **the top 10 most frequent words in _A Christmas Carol_** and a **total of 10,941 sentences in _The Moby Dick or The Whale_**.
