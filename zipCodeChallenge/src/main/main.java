package main;

import java.util.List;
import java.util.Scanner;

public class main {
    private static Scanner scan;

    public static void main(String[] args) {
        scan = new Scanner(System.in);
        String zipcodeRanges = scan.nextLine();//[94133,94133] [94200,94299] [94226,94399]
        zipcodeProcessor zipcodeProcessor = new zipcodeProcessor(zipcodeRanges);
        List<zipcode> zipcodeList = zipcodeProcessor.stripzipcode();
        zipcodeMerge zipcode_merge = new zipcodeMerge();
        List<zipcode> sortedzipcodeList = zipcode_merge.sortByLeftSides(zipcodeList);
        List<zipcode> mergedzipcodeList = zipcode_merge.mergezipcodes(sortedzipcodeList);
        for (zipcode zipcode : mergedzipcodeList) {
            System.out.println("[" + zipcode.getleft() + "," + zipcode.getright() + "]");
        }

    }

}
