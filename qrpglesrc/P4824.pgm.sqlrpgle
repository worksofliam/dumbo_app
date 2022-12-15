**free

ctl-opt dftactgrp(*no);

dcl-pi P4824;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P4824';
dsply theCharVar;
callp localProc();
P1800();
P718();
P955();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4824 in the procedure';
end-proc;