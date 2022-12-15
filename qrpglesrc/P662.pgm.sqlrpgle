**free

ctl-opt dftactgrp(*no);

dcl-pi P662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P662';
dsply theCharVar;
callp localProc();
P13();
P521();
P365();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P662 in the procedure';
end-proc;