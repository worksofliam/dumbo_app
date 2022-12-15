**free

ctl-opt dftactgrp(*no);

dcl-pi P1023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds theTable extname('T1638') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1638 LIMIT 1;

theCharVar = 'Hello from P1023';
dsply theCharVar;
callp localProc();
P261();
P164();
P218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1023 in the procedure';
end-proc;