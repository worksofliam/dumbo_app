**free

ctl-opt dftactgrp(*no);

dcl-pi P4079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2416.rpgleinc'
/copy 'qrpgleref/P1360.rpgleinc'
/copy 'qrpgleref/P3497.rpgleinc'

dcl-ds theTable extname('T295') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T295 LIMIT 1;

theCharVar = 'Hello from P4079';
dsply theCharVar;
callp localProc();
P2416();
P1360();
P3497();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4079 in the procedure';
end-proc;