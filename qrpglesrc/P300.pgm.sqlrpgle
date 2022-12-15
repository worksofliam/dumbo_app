**free

ctl-opt dftactgrp(*no);

dcl-pi P300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P300';
dsply theCharVar;
callp localProc();
P77();
P237();
P284();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P300 in the procedure';
end-proc;