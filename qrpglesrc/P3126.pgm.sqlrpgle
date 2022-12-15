**free

ctl-opt dftactgrp(*no);

dcl-pi P3126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1428.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P1643.rpgleinc'

dcl-ds theTable extname('T946') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T946 LIMIT 1;

theCharVar = 'Hello from P3126';
dsply theCharVar;
callp localProc();
P1428();
P274();
P1643();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3126 in the procedure';
end-proc;