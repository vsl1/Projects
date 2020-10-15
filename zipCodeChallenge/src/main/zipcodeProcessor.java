package main;

import java.util.LinkedList;
import java.util.List;

public class zipcodeProcessor {
    private String zipcodeRanges;

    public zipcodeProcessor(String zipcodeRanges) {
        this.zipcodeRanges = zipcodeRanges;
    }

    public List<zipcode> stripzipcode() {
        String[] zipcodeIntervals = zipcodeRanges.split(" ");
        return loadzipcode(zipcodeIntervals);
    }

    public int stringToInt(String zipcode) {
        return Integer.parseInt(zipcode);
    }

    public boolean checkZipLength(int zipcode) {
        if ((int) (Math.log10(zipcode) + 1) != 5)
            return false;
        return true;
    }

    public boolean comparezipcodeRange(int leftSide, int rightSide) {
        if (leftSide > rightSide)
            return false;
        return true;
    }

    public boolean validatezipcodeRange(int leftSide, int rightSide) {
        if (!checkZipLength(leftSide) && !checkZipLength(rightSide))
            throw new IllegalArgumentException(leftSide + " " + rightSide + ": " + "zipcode should have 5 digits");
        if (comparezipcodeRange(leftSide, rightSide) == false)
            throw new IllegalArgumentException(
                    leftSide + " " + rightSide + ":  " + "zipcode left side should be less than right side");
        return true;
    }

    public zipcode validateAndAdd(String[] zipRange) {
        if (zipRange.length != 2)
            throw new IllegalArgumentException(zipRange[0] + "zipcode should have left and right sides");
        int leftSide = stringToInt(zipRange[0]);
        int rightSide = stringToInt(zipRange[1]);
        zipcode zipcode = null;
        if (validatezipcodeRange(leftSide, rightSide) == true)
            zipcode = new zipcode(leftSide, rightSide);
        return zipcode;
    }

    public zipcode getzipcodeRange(String zipcodeRange) {
        return validateAndAdd(zipcodeRange.replaceAll("\\[|\\]", "").split(","));
    }

    public List<zipcode> loadzipcode(String[] zipcodeRange) {
        List<zipcode> zipcodesList = new LinkedList<zipcode>();
        for (int i = 0; i < zipcodeRange.length; i++) {
            zipcodesList.add(getzipcodeRange(zipcodeRange[i]));
        }
        return zipcodesList;
    }
}