package org.example;

import junit.framework.TestCase;
import org.junit.Test;
import java.util.LinkedList;
import java.util.List;

/**
 * Unit test in MergeTest
 */
public class ZipCodeMergeTest extends TestCase {
    @Test
    public void testMergeZipcodes() {
        GenerateDataSet dataSet = new GenerateDataSet();
        String zipcodeRanges = dataSet.generateRandomDataSet(100);
        ZipcodeProcessor zipcodeProcessor = new ZipcodeProcessor(zipcodeRanges);
        List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        ZipcodeMerge zipcode_merger = new ZipcodeMerge();
        List<zipcode> sortedZipCodeList = zipcode_merger.sortByLeftSides(zipcodeList);
        List<zipcode> mergedZipcodeList = zipcode_merger.mergezipcodes(sortedZipCodeList);
        assertTrue(mergedZipcodeList.size() > 0);
    }

    public void testOverlappingRangeToReturnOneRange() {
        zipcode zipcode1 = new zipcode(95000, 95005);
        zipcode zipcode2 = new zipcode(95002, 95006);
        List<zipcode> zipcodeList = new LinkedList<zipcode>();
        zipcodeList.add(zipcode1);
        zipcodeList.add(zipcode2);
        ZipcodeMerge zipcode_merger = new ZipcodeMerge();
        List<zipcode> sortedZipCodeList = zipcode_merger.sortByLeftSides(zipcodeList);
        List<zipcode> mergedZipcodeList = zipcode_merger.mergezipcodes(sortedZipCodeList);
        assertTrue(mergedZipcodeList.get(0).getright() == 95006);
    }

    public void testSortingBeforeMerging() {
        zipcode zipcode1 = new zipcode(95000, 95005);
        zipcode zipcode2 = new zipcode(95002, 95006);
        List<zipcode> zipcodeList = new LinkedList<zipcode>();
        zipcodeList.add(zipcode2);
        zipcodeList.add(zipcode1);
        ZipcodeMerge zipcode_merger = new ZipcodeMerge();
        List<zipcode> sortedZipCodeList = zipcode_merger.sortByLeftSides(zipcodeList);
        assertTrue(sortedZipCodeList.get(0) == zipcode1);
    }

    public void testLoadAfterCallingMerge() {
        zipcode zipcode1 = new zipcode(95000, 95005);
        zipcode zipcode2 = new zipcode(95007, 95008);
        List<zipcode> zipcodeList = new LinkedList<zipcode>();
        zipcodeList.add(zipcode1);
        zipcodeList.add(zipcode2);
        ZipcodeMerge zipcode_merger = new ZipcodeMerge();
        List<zipcode> sortedZipCodeList = zipcode_merger.sortByLeftSides(zipcodeList);
        List<zipcode> mergedZipcodeList = zipcode_merger.mergezipcodes(sortedZipCodeList);
        assertEquals(mergedZipcodeList, zipcodeList);
    }
}
