#!/bin/bash

echo "================ Project Setup Automation =============="

companyName=""
echo "Enter company name"
read companyName
if [ -z "$companyName" ]
then
  echo "Company name cannot be empty"
  exit 1
fi

projectName=""
echo "Enter project name"
read projectName
if [ -z "$projectName" ]
then
  echo "Project name cannot be empty"
  exit 1
fi

department=""
echo "Enter department name"
read department
if [ -z "$department" ]
then
  echo "Department name cannot be empty"
  exit 1
fi

mkdir -p "${companyName}/${projectName}"/{docs,config,scripts,logs,backup}

echo "Project created successfully"
echo "Company name: ${companyName}"
echo "Project name: ${projectName}"
echo "Department: ${department}"
echo "Location: ${companyName}/${projectName}"
