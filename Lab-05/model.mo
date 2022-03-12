model Project
  parameter  Real a=0.7;
  parameter  Real b=0.06;
  parameter  Real c=0.6;
  parameter  Real d=0.07;
  
  Real x(start=8);
  Real y(start=15);
  
  equation
    der(x)= -a*x + b*x*y;
    der(y)= c*y - d*x*y;

  
  annotation(experiment(StartTime=0, StopTime=400, Tplerance=1e-06,Interval=0.05));

end Project;
