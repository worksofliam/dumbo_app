**free

ctl-opt dftactgrp(*no);

dcl-pi P4653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3280.rpgleinc'
/copy 'qrpgleref/P1838.rpgleinc'
/copy 'qrpgleref/P2427.rpgleinc'

dcl-ds theTable extname('T1127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1127 LIMIT 1;

theCharVar = 'Hello from P4653';
dsply theCharVar;
callp localProc();
P3280();
P1838();
P2427();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4653 in the procedure';
end-proc;