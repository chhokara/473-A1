#include "gtest/gtest.h"
#include "gmock/gmock.h"
#include <cmath>
#include "Parallelogram.h"

using namespace testing;
using namespace shapes;

// -----Tests resulting in failures-----
TEST(ParallelogramTests, TestGetParameter) {
    Side side1(5);
    Side side2(4);
    Angle interior(45);
    Parallelogram parallelogram(side1, side2, interior);
    int perimeter = parallelogram.getPerimeter();
    int expected = 2 * (5 + 4);
    // The expected value of getKind should be 2 * (side1 + side2)
    // However getPerimeter returns 2 * (side1 + side1) which is not the correct output
    EXPECT_EQ(expected, perimeter);           
}

TEST(ParallelogramTests, TestGetArea) {
    Side side1(5);
    Side side2(4);
    Angle interior(45);
    Parallelogram parallelogram(side1, side2, interior);                                 
    double area = parallelogram.getArea();
    double expected = 5 * 4 * sin(M_PI / 4);
    // The expected value of getKind should be side1 * side2 * sine(interior)
    // However getArea returns side2 * side2 * sine(interior) which is not the correct output
    EXPECT_EQ(expected, area);
}

  
TEST(ParallelogramTests, TestGetKind) {
    Side side1(5);
    Side side2(5);
    Angle interior(90);
    Parallelogram parallelogram(side1, side2, interior);
    Parallelogram::Kind kind = parallelogram.getKind();
    Parallelogram::Kind expected = Parallelogram::Kind::SQUARE;
    // The expected value of getKind should be SQUARE since it is both a RECTANGLE and a RHOMBUS
    // However getKind returns RECTANGLE which is not the correct output
    EXPECT_EQ(expected, kind);
}

// -----Tests resulting in success-----
TEST(ParallelogramTests, TestIsRhombus) {
    Side side1(5);
    Side side2(5);
    Angle interior(45);
    Parallelogram parallelogram(side1, side2, interior);                                 
    bool isRhombus = parallelogram.isRhombus();
    bool expected = true;
    EXPECT_EQ(expected, isRhombus);
}

TEST(ParallelogramTests, TestIsRectangle) {
    Side side1(5);
    Side side2(4);
    Angle interior(90);
    Parallelogram parallelogram(side1, side2, interior);                                 
    bool isRectangle = parallelogram.isRectangle();
    bool expected = true;
    EXPECT_EQ(expected, isRectangle);
}

TEST(ParallelogramTests, TestIsSquare) {
    Side side1(5);
    Side side2(5);
    Angle interior(90);
    Parallelogram parallelogram(side1, side2, interior);                                 
    bool isSquare = parallelogram.isSquare();
    bool expected = true;
    EXPECT_EQ(expected, isSquare);
}