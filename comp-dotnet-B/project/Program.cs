using System;

namespace HelloWorld_B
{
    class Program
    {
        static void Main(string[] args)
        {
            var c1 = new MyClass();
            var ip = "10.10.0.1";  // hardcoded stuff
            Console.WriteLine($"Hello World! {c1.ReturnMessage()}");

            var c2 = new shared_library.LibClass();
            Console.WriteLine($"Hello World! {c2.ReturnMessage()}");
        }
    }
}