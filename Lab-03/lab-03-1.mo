model Project
  parameter  Real a(start=0.4);
  parameter  Real b(start=0.67);
  parameter  Real c(start=0.77);
  parameter  Real h(start=0.14); 
  Real y1(start=882000);
  Real y2(start=747000);
  
  equation
    der(y1)= -a*y1-b*y2 + sin(3*time)+1;
    der(y2)= -c*y1-h*y2 + cos(2*time)+2;

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;



model Project
  parameter  Real a(start=0.24);
  parameter  Real b(start=0.67);
  parameter  Real c(start=0.47);
  parameter  Real h(start=0.14); 
  Real y1(start=882000);
  Real y2(start=747000);
  
  equation
    der(y1)= -a*y1-b*y2 + abs(sin(2*time));
    der(y2)= -c*y1*y2-h*y2 + abs(cos(2*time));

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;