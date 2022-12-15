**free

ctl-opt dftactgrp(*no);

dcl-pi P4160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P3095.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds theTable extname('T1747') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1747 LIMIT 1;

theCharVar = 'Hello from P4160';
dsply theCharVar;
callp localProc();
P1251();
P3095();
P350();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4160 in the procedure';
end-proc;