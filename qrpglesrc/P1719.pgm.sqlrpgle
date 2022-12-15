**free

ctl-opt dftactgrp(*no);

dcl-pi P1719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P795.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'

dcl-ds theTable extname('T665') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T665 LIMIT 1;

theCharVar = 'Hello from P1719';
dsply theCharVar;
callp localProc();
P795();
P984();
P1402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1719 in the procedure';
end-proc;