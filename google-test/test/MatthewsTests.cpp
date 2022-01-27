#include "gtest/gtest.h"
#include "gmock/gmock.h"
#include "Matthews.h"

using namespace testing;
using namespace sequence;

TEST(MatthewsTests, TestRemainderZero) {
    MatthewsOutcome outcome = checkMatthewsOutcome(0);
    MatthewsOutcome expected = MatthewsOutcome::ZERO;
    EXPECT_EQ(expected, outcome);
}


TEST(MatthewsTests, TestMinusOneCycle) {
    MatthewsOutcome outcome = checkMatthewsOutcome(-1);
    MatthewsOutcome expected = MatthewsOutcome::MINUS_ONE_CYCLE;
    EXPECT_EQ(expected, outcome);
}


TEST(MatthewsTests, TestMinusTwoCycle) {
    MatthewsOutcome outcome = checkMatthewsOutcome(-2);
    MatthewsOutcome expected = MatthewsOutcome::MINUS_TWO_CYCLE;
    EXPECT_EQ(expected, outcome);
}

TEST(MatthewsTests, TestRemainderOne) {
    MatthewsOutcome outcome = checkMatthewsOutcome(4);
    MatthewsOutcome expected = MatthewsOutcome::ZERO;
    EXPECT_EQ(expected, outcome);
}

TEST(MatthewsTests, TestRemainderOther) {
    MatthewsOutcome outcome = checkMatthewsOutcome(8);
    MatthewsOutcome expected = MatthewsOutcome::ZERO;
    EXPECT_EQ(expected, outcome);
}