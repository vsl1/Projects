package main;

import java.util.Comparator;

public class zipcodeComparator implements Comparator<zipcode> {
    public int compare(zipcode interval1, zipcode interval2) {
        if (interval1.getleft() > interval2.getleft())
            return 1;
        else
            return -1;
    }
}