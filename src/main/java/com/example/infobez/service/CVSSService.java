package com.example.infobez.service;

import com.example.infobez.form.Form;
import com.example.infobez.form.Form3Version;
import org.springframework.stereotype.Service;

import static java.lang.Math.min;
import java.math.BigDecimal;
import java.math.RoundingMode;

@Service
public class CVSSService {

    public String[] getCvssv2Result(Form form) {
        String[] array = new String[3];

        // -------------------- Basic Metrics ----------------
        double f=0;
        double impact = 10.41*(1-(1-form.getFour())*(1- form.getFive())*(1- form.getSix()));
        double exploitability = 20 * form.getOne() * form.getTwo() * form.getThree();
        if (impact != 0) f=1.176;
        double baseScore = (((0.6*impact) + (0.4*exploitability)-1.5)*f);
        array[0] = String.format("%.1f", baseScore);

        // ------------------- Time Metrics ------------------
        double temporalScore = 1.0 * baseScore * form.getSeven() * form.getEight() * form.getNine();
        array[1] = String.format("%.1f", temporalScore);

        // ------------------- Context Metrics ---------------
        double adjustedImpact = min(10 , 10.41 * (1 - (1 - form.getFour() * form.getTwelve())
                * (1 - form.getFive() * form.getThirteen())
                * ( 1- form.getSix() * form.getFourteen())));
        double adjustedBaseScore = (((0.6 * adjustedImpact) + (0.4 * exploitability)-1.5) * f);
        double adjustedTemporal = adjustedBaseScore * form.getSeven() * form.getEight() * form.getNine();
        double environmentalScore = 1.0 * (adjustedTemporal + (10 - adjustedTemporal) * form.getTen()) * form.getEleven();
        array[2] = String.format("%.1f", environmentalScore);

        return array;
    }

    public String[] getCvssv3Result(Form3Version form) {
        String[] array = new String[3];
        if (form.getFive() == 1) {
            if (form.getThree() == 0.62) form.setThree(0.68);
            if (form.getThree() == 0.27) form.setThree(0.5);
        }
        if (form.getTwelve() == 1.0) form.setTwelve(form.getOne());
        if (form.getThirteen() == 1.0) form.setThirteen(form.getTwo());
        if (form.getFourteen() == 1.0) form.setFourteen(form.getThree());
        else if (form.getFourteen() == 0.62) {
            if (form.getSixteen() == 0.62) form.setFourteen(0.68);
            if (form.getSixteen() == 0.27) form.setFourteen(0.5);
        }
        if (form.getFifteen() == 1.0) form.setFifteen(form.getFour());
        if (form.getSixteen() == 1.0) form.setSixteen(form.getFive());
        if (form.getSeventeen() == 1.0) form.setSeventeen(form.getSix());
        if (form.getEighteen() == 1.0) form.setEighteen(form.getSeven());
        if (form.getNineteen() == 1.0) form.setNineteen(form.getEight());

        // -------------------- Basic Metrics ----------------
        double baseScore = 0, impact = 0;
        double impactBase = 1 - (1 - form.getSix()) * (1-form.getSeven()) * (1- form.getEight());
        if (form.getFive() == 0) {
            impact = 6.42 * impactBase;
        } else if (form.getFive() == 1) {
            impact = 7.52 * (impactBase - 0.029) - 3.25 * Math.pow((impactBase - 0.02), 15);
        }
        double exploitability = 8.22 * form.getOne() * form.getTwo() * form.getThree() * form.getFour();
        if (impact <= 0) baseScore =0;
        else if (form.getFive() ==0) baseScore = min ((impact +
                exploitability), 10);
        if (form.getFive() == 1) baseScore = min (1.08 * (impact +
                exploitability), 10);
        array[0] = String.format("%.1f", baseScore);

        // ------------------- Time Metrics ------------------
        double temporalScore = new BigDecimal(baseScore * form.getNine() * form.getTen() * form.getEleven()).setScale(1, RoundingMode.UP).doubleValue();
        array[1] = String.format("%.1f", temporalScore);

        // ------------------- Context Metrics ---------------
        double mImpactBase= min((1- (1- form.getSeventeen() * form.getTwenty())*(1 - form.getEighteen()* form.getTwentyOne())
                * (1 - form.getNineteen() * form.getTwentyTwo())), 0.915);
        double mImpact = 0, environmentalScore = 0;
        if (form.getSixteen() == 0) mImpact = 6.42 * (mImpactBase);
        if (form.getSixteen() == 1) mImpact = 7.52 * (mImpactBase - 0.029)- 3.25 * Math.pow((mImpactBase-0.02), 15);
        double mExploitability = 8.22 * form.getTwelve() * form.getThirteen() * form.getFourteen() * form.getFifteen();
        if (mImpact <= 0) environmentalScore = 0;
        else {
            if (form.getSixteen() == 0) {
            double a = new BigDecimal(min ((mImpact + mExploitability), 10)).setScale(1, RoundingMode.UP).doubleValue();
                environmentalScore = new BigDecimal(a * form.getNine() * form.getTen() * form.getEleven())
                        .setScale(1, RoundingMode.UP).doubleValue();
            }
            if (form.getSixteen() == 1) {
                double b = new BigDecimal(min (1.08 * (mImpact + mExploitability), 10)).setScale(1, RoundingMode.UP).doubleValue();
                environmentalScore = new BigDecimal(b * form.getNine() * form.getTen() * form.getEleven())
                        .setScale(1, RoundingMode.UP).doubleValue();
            }
        }
        array[2] = String.format("%.1f", environmentalScore);

        return array;
    }
}
