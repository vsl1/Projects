package org.example;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
/**
 * Merge the zipcodes' range and return the results.
 */
public class ZipcodeMerge {
    public List<zipcode> sortByLeftSides(List<zipcode> zipcodeRangeList) {
        Collections.sort(zipcodeRangeList, new ZipcodeComparator());
        return zipcodeRangeList;
    }

    public List<zipcode> mergezipcodes(List<zipcode> sortedzipcodeList) {
        List<zipcode> mergedzipcodeList = new LinkedList<zipcode>();
        zipcode zipcode = null;
        for (zipcode zipcodeInterval : sortedzipcodeList) {
            if (zipcode == null)
                zipcode = zipcodeInterval;
            else {
                if (zipcode.getright() >= zipcodeInterval.getleft()) {
                    zipcode.setright(Math.max(zipcode.getright(), zipcodeInterval.getright()));
                } else {
                    mergedzipcodeList.add(zipcode);
                    zipcode = zipcodeInterval;
                }
            }
        }
        mergedzipcodeList.add(zipcode);
        return mergedzipcodeList;
    }

}