**free

ctl-opt dftactgrp(*no);

dcl-pi P1542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1160.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P1140.rpgleinc'

dcl-ds theTable extname('T276') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T276 LIMIT 1;

theCharVar = 'Hello from P1542';
dsply theCharVar;
callp localProc();
P1160();
P333();
P1140();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1542 in the procedure';
end-proc;