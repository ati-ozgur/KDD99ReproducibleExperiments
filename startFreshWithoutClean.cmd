SET PATH=%PATH%;.\tools
gradlew downloadKddDatasetFiles unzipKddDatasetFiles tableImportKddTrainDataFromCommandLine schemaChangeAfterImport createArffFileFromDatabase trainAllModelsUsingWekaInTrainingDataSet testAllModelsUsingWekaInTrainingDataSet testAllModelsUsingWekaInTestDataSet

