using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SimpleTest.Tests
{
    [TestClass]
    public class OddAddAndDoublerTests
    {
        [TestMethod]
        public void OddAddAndDoubleTest_FiveMustGiveTwelve()
        {
            var oda = new OddAddAndDoubler();
            Assert.AreEqual(12, oda.OddAddAndDouble(5));
        }

        [TestMethod]
        public void OddAddAndDoubleTest_SixMustGiveTwelve()
        {
            var oda = new OddAddAndDoubler();
            Assert.AreEqual(12, oda.OddAddAndDouble(6));
        }
    }
}