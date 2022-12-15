**free

ctl-opt dftactgrp(*no);

dcl-pi P4773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P4145.rpgleinc'
/copy 'qrpgleref/P2571.rpgleinc'

dcl-ds theTable extname('T1231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1231 LIMIT 1;

theCharVar = 'Hello from P4773';
dsply theCharVar;
callp localProc();
P980();
P4145();
P2571();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4773 in the procedure';
end-proc;