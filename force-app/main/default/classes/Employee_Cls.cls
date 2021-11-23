public class Employee_Cls {
    Integer empId ;
 	string empName;
 	Decimal empSalary;
    Boolean empPromotion;
    
    public Employee_Cls(){
        empId = 0;
        empName = 'NULL-EMP';
        empSalary = 0;
        empPromotion = false;
    }
    public Employee_Cls(Integer eid,String name, Decimal salary){
    	empId = eid;
        empName = name;
        empSalary = salary;
    }
    public void setValues(Integer eid,String name, Decimal salary){
    	empId = eid;
        empName = name;
        empSalary = salary;
    }
    
    public void getValues(){
        System.debug('Employee ID : ' + empId );
        System.debug('Employee Name : ' + empName);
        System.debug('Current Salary : ' + empSalary);
    }
    public void empPromoted(Boolean promote){
        if (promote){
        	empSalary += empSalary * 0.3;
        }
        else{
            empSalary += empSalary * 0.2;
        }
    }
    
    
    public Decimal getSalary(){
        return empSalary;
    }

}