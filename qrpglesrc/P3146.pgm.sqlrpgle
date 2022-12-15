**free

ctl-opt dftactgrp(*no);

dcl-pi P3146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P1233.rpgleinc'
/copy 'qrpgleref/P1417.rpgleinc'

dcl-ds theTable extname('T1019') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1019 LIMIT 1;

theCharVar = 'Hello from P3146';
dsply theCharVar;
callp localProc();
P350();
P1233();
P1417();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3146 in the procedure';
end-proc;