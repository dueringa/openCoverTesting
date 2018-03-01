namespace SimpleTest
{
    public class OddAddAndDoubler
    {
        public int OddAddAndDouble(int number)
        {
            if (number%2 == 0)
            {
                return number*2;
            }
            return (number + 1)*2;
        }
    }
}