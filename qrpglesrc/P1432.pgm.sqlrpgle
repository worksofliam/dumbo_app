**free

ctl-opt dftactgrp(*no);

dcl-pi P1432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P1316.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'

dcl-ds theTable extname('T1006') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1006 LIMIT 1;

theCharVar = 'Hello from P1432';
dsply theCharVar;
callp localProc();
P627();
P1316();
P692();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1432 in the procedure';
end-proc;