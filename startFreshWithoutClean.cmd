SET PATH=%PATH%;.\tools
gradlew downloadKddDatasetFiles unzipKddDatasetFiles tableImportKddTrainDataFromCommandLine schemaChangeAfterImport createArffFileFromDatabase trainAllModelInTrainingDataSet testAllModelsInTrainingDataSet testAllModelsInTrainingDataSet

