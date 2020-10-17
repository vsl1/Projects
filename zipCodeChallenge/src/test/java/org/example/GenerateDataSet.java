package org.example;

import org.fluttercode.datafactory.impl.DataFactory;
/**
 * Generate ZipCode datasets for testing using DataFactory.
 */
public class GenerateDataSet {
    public String generateRandomDataSet(int dataSetsSize) {
        DataFactory dataFactory = new DataFactory();
        String dataSet = "";
        for (int i = 0; i < dataSetsSize; i++) {
            int left = dataFactory.getNumberBetween(10000, 99999);
            int right = dataFactory.getNumberBetween(left, 99999);
            dataSet += "[" + left + "," + right + "] ";
        }
        return dataSet;
    }

    public String generateOverlappingDataSet(int dataSetsSize) {
        DataFactory dataFactory = new DataFactory();
        String dataSet = "";
        for (int i = 0; i < dataSetsSize; i++) {
            int left = dataFactory.getNumberBetween(10000, 99999);
            int right = dataFactory.getNumberBetween(left, 99999);
            dataSet += "[" + (left - 4) + "," + right + "] ";
        }
        return dataSet;
    }
}
