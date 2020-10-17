package org.example;

import junit.framework.TestCase;
import junit.framework.TestSuite;
import junit.framework.Test;

import java.util.List;

/**
 * Unit tests for AppTest in serveal basic scenario
 */
public class AppTest extends TestCase
{
    public AppTest(String testName) {
        super(testName);
    }

    public static Test suite() {
        TestSuite suite = new TestSuite(AppTest.class);
        return suite;
    }

    public void testLoadedList() {
        GenerateDataSet dataSet = new GenerateDataSet();
        String inputDataSet = dataSet.generateRandomDataSet(100);
        ZipcodeProcessor zipcodeProcessor = new ZipcodeProcessor(inputDataSet);
        List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        assertTrue(zipcodeList.size() > 0);
    }

    public void testfinalResultToMatch() {
        GenerateDataSet dataSet = new GenerateDataSet();
        String inputDataSet = dataSet.generateOverlappingDataSet(5);
        ZipcodeProcessor zipcodeProcessor = new ZipcodeProcessor(inputDataSet);
        List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        ZipcodeMerge zipcode_merger = new ZipcodeMerge();
        List<zipcode> sortedZipCodeList = zipcode_merger.sortByLeftSides(zipcodeList);
        List<zipcode> mergedZipcodeList = zipcode_merger.mergezipcodes(sortedZipCodeList);
        assertTrue(mergedZipcodeList.size() == 1);
    }

    public void testIllegalArgumentException() {
        try {
            String inputDataSet = "[92004,92002] [92003,92004]";
            ZipcodeProcessor zipcodeProcessor = new ZipcodeProcessor(inputDataSet);
            List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        } catch (IllegalArgumentException e) {
            assertEquals("IllegalArgumentException", e.getClass().getSimpleName());
        }
    }

    public void testExceptionWhenMoreRanges() {
        try {
            String inputDataSet = "[92004,92002,92003] [92003,92004]";
            ZipcodeProcessor zipcodeProcessor = new ZipcodeProcessor(inputDataSet);
            List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        } catch (IllegalArgumentException e) {
            assertEquals("IllegalArgumentException", e.getClass().getSimpleName());
        }
    }

    public void testExceptionMessageWhenLiftSidesGreater() {
        try {
            String inputDataSet = "[92004,92002] [92003,92004]";
            ZipcodeProcessor zipcodeProcessor = new ZipcodeProcessor(inputDataSet);
            List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        } catch (IllegalArgumentException e) {
            String expectedMessage = "92004 92002:  zipcode left side should be less than right side";
            assertEquals(expectedMessage, e.getMessage());
        }
    }

    public void testExceptionMessageWhenMoreRangeGiven() {
        try {
            String inputDataSet = "[92004,92002,92003] [92003,92004]";
            ZipcodeProcessor zipcodeProcessor = new ZipcodeProcessor(inputDataSet);
            List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        } catch (IllegalArgumentException e) {
            String expectedMessage = "92004zipcode should have left and right sides";
            assertEquals(expectedMessage, e.getMessage());
        }
    }

}
