using System;

namespace Payroll_Service
{
    class Program
    {
        static void Main(string[] args)
        {
            bool flag = true;
            EmployeeConfig employeeConfig = new EmployeeConfig();
            EmployeeData data = new EmployeeData();
            while (flag)
            {
                Console.WriteLine("Enter your Choice Number to Execute the Program Press- 1-Addition, 2-Exit");
                int choice = Convert.ToInt32(Console.ReadLine());
                switch (choice)
                {
                    case 1:                           // It Will Add Data to the Table
                        data.Name = "Sahiba";
                        data.Basic_pay = 89000.45;
                        data.StartDate = DateTime.Now;
                        data.gender = 'F';
                        data.phone = "7004830003";
                        data.Address = "Muzaffarpur";
                        data.Department = "HR";
                        data.Deduction = 567.34;
                        data.Taxable_pay = 34.23;
                        data.IncomeTax_pay = 10.23;
                        data.Net_Pay = 1000;
                        var result = employeeConfig.AddEmployee(data);
                        if (result != null)
                            Console.WriteLine("Data Got added Successfully");
                        else
                            Console.WriteLine("Provide Correct Data According to Coloumn");
                        break;
                
                    case 2:
                        flag = false;
                        break;
                }
            }
        }
    }
}
