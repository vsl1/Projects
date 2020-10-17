package org.example;

import java.util.List;
import java.util.Scanner;

/**
 * Input zipcodes like //[94133,94133] [94200,94299] [94226,94399] it will return the results.
 */
public class App {

    private static Scanner scan;

    public static void main( String[] args ) {
        scan = new Scanner(System.in);
        String zipcodeRanges = scan.nextLine();
        ZipcodeProcessor zipcodeProcessor = new ZipcodeProcessor(zipcodeRanges);
        List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        ZipcodeMerge zipcode_merge = new ZipcodeMerge();
        List<zipcode> sortedzipcodeList = zipcode_merge.sortByLeftSides(zipcodeList);
        List<zipcode> mergedzipcodeList = zipcode_merge.mergezipcodes(sortedzipcodeList);
        for (zipcode zipcode : mergedzipcodeList) {
            System.out.println("[" + zipcode.getleft() + "," + zipcode.getright() + "]");
        }
    }
}
