**free

ctl-opt dftactgrp(*no);

dcl-pi P1451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1081.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T1441') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1441 LIMIT 1;

theCharVar = 'Hello from P1451';
dsply theCharVar;
callp localProc();
P1081();
P774();
P393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1451 in the procedure';
end-proc;