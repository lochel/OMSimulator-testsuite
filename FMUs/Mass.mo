model Mass
  input Real f;
  output Real x;
  output Real v;
  parameter Real M=10;
  parameter Real B = 10;
  parameter Real fstep1 = 0;
  parameter Real fstep2 = 100;
  parameter Real tstep = 0.1; 
  Real fstep;
  
equation
  if time<tstep
    then fstep=fstep1;
    else fstep=fstep2;
  end if;
  der(v)*M + v*B = fstep-f;
  v = der(x);
end Mass;
