**free

ctl-opt dftactgrp(*no);

dcl-pi P4068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1762.rpgleinc'
/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P3531.rpgleinc'

dcl-ds theTable extname('T1568') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1568 LIMIT 1;

theCharVar = 'Hello from P4068';
dsply theCharVar;
callp localProc();
P1762();
P763();
P3531();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4068 in the procedure';
end-proc;