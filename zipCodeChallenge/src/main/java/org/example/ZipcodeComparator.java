package org.example;

import java.util.Comparator;
/**
 * Sort the zipcodes according to their left sides.
 */
public class ZipcodeComparator implements Comparator<zipcode> {
    public int compare(zipcode interval1, zipcode interval2) {
        if (interval1.getleft() > interval2.getleft())
            return 1;
        else
            return -1;
    }
}