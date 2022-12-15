**free

ctl-opt dftactgrp(*no);

dcl-pi P3649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3094.rpgleinc'
/copy 'qrpgleref/P1450.rpgleinc'
/copy 'qrpgleref/P2718.rpgleinc'

dcl-ds theTable extname('T931') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T931 LIMIT 1;

theCharVar = 'Hello from P3649';
dsply theCharVar;
callp localProc();
P3094();
P1450();
P2718();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3649 in the procedure';
end-proc;