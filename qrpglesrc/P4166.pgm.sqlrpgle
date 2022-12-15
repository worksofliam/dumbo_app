**free

ctl-opt dftactgrp(*no);

dcl-pi P4166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3436.rpgleinc'
/copy 'qrpgleref/P2268.rpgleinc'
/copy 'qrpgleref/P3275.rpgleinc'

dcl-ds theTable extname('T1379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1379 LIMIT 1;

theCharVar = 'Hello from P4166';
dsply theCharVar;
callp localProc();
P3436();
P2268();
P3275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4166 in the procedure';
end-proc;