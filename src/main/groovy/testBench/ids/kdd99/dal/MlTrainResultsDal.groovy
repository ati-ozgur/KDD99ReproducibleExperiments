package testBench.ids.kdd99.dal;

import groovy.sql.Sql
import java.util.Date

import testBench.ids.kdd99.*




public class MlTrainResultsDal
{

private static final String SQL_INSERT = "INSERT INTO ML_TRAIN_RESULTS (datasetName,classifierName,options, trainingStartTime, trainingFinishTime, trainingDuration, freeMemory, [totalMemory], [maxMemory], usedMemory) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"

    public static void Ekle(String datasetName
        ,String classifierName
        ,String options
        ,String trainingStartTime
        ,String trainingFinishTime
        ,Long freeMemory
        ,Long totalMemory
        ,Long maxMemory
        ,Long usedMemory)
        {
            int trainingDuration = 0; //trainingFinishTime - trainingStartTime;

            def sqlEngine = Sql.newInstance(Finals.JDBC_URL);

            def params = [datasetName, classifierName, options,trainingStartTime,trainingFinishTime,trainingDuration,freeMemory,totalMemory,maxMemory,usedMemory];

            sqlEngine.execute(SQL_INSERT, params)
            sqlEngine.close()

        }

    public static void Ekle(String datasetName
        ,String classifierName
        ,String options
        ,Date trainingStartTime
        ,Date trainingFinishTime
        ,Long freeMemory
        ,Long totalMemory
        ,Long maxMemory
        ,Long usedMemory)
        {
            // insert as seconds
            int trainingDuration = (trainingFinishTime.getTime() - trainingStartTime.getTime())/1000;

            def sqlEngine = Sql.newInstance(Finals.JDBC_URL);
            String trainingStartTimeAsString = DateHelper.getFormattedStringFromDate(trainingStartTime);
            String trainingFinishTimeAsString = DateHelper.getFormattedStringFromDate(trainingFinishTime);

            def params = [datasetName, classifierName, options,trainingStartTimeAsString,trainingFinishTimeAsString,trainingDuration,freeMemory,totalMemory,maxMemory,usedMemory];

            sqlEngine.execute(SQL_INSERT, params)
            sqlEngine.close()

        }

}














