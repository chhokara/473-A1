#include "gtest/gtest.h"
#include "gmock/gmock.h"
#include "Awards.h"

using namespace testing;
using namespace awards;
using ::testing::InSequence;           

class FakeRankList : public RankList {
    public:
        std::string getNext() {
            return "name";
        }
};

class MockRankList : public RankList {
    public:
        MOCK_METHOD(std::string, getNext, (), (override));

        void DelegateToFake() {
            ON_CALL(*this, getNext).WillByDefault([this]() {
                return fake_.getNext();
            });
        }
    
    private: 
        FakeRankList fake_;
};

class MockAwards : public AwardCeremonyActions {
    public: 
        MOCK_METHOD(void, playAnthem, (), (override));
        MOCK_METHOD(void, turnOffTheLightsAndGoHome, (), (override));
        MOCK_METHOD(void, awardBronze, (std::string recipient), (override));
        MOCK_METHOD(void, awardSilver, (std::string recipient), (override));
        MOCK_METHOD(void, awardGold, (std::string recipient), (override));
};

TEST(AwardsTests, TestAwardsCeremony) {
    MockRankList rankList;
    rankList.DelegateToFake();

    MockAwards awards;
    {
        InSequence seq;

        EXPECT_CALL(awards, playAnthem());
        EXPECT_CALL(awards, awardBronze("name"));
        EXPECT_CALL(awards, awardSilver("name"));
        EXPECT_CALL(awards, awardGold("name"));

    }

    EXPECT_CALL(rankList, getNext())
        .Times(3);

    performAwardCeremony(rankList, awards);
}