**free

ctl-opt dftactgrp(*no);

dcl-pi P3503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2686.rpgleinc'
/copy 'qrpgleref/P1307.rpgleinc'
/copy 'qrpgleref/P1673.rpgleinc'

dcl-ds theTable extname('T612') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T612 LIMIT 1;

theCharVar = 'Hello from P3503';
dsply theCharVar;
callp localProc();
P2686();
P1307();
P1673();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3503 in the procedure';
end-proc;