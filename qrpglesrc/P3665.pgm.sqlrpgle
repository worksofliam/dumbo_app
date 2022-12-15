**free

ctl-opt dftactgrp(*no);

dcl-pi P3665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P1520.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds theTable extname('T1051') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1051 LIMIT 1;

theCharVar = 'Hello from P3665';
dsply theCharVar;
callp localProc();
P839();
P1520();
P350();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3665 in the procedure';
end-proc;