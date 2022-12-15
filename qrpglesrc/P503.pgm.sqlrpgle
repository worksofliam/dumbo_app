**free

ctl-opt dftactgrp(*no);

dcl-pi P503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T380') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T380 LIMIT 1;

theCharVar = 'Hello from P503';
dsply theCharVar;
callp localProc();
P235();
P165();
P68();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P503 in the procedure';
end-proc;