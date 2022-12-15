**free

ctl-opt dftactgrp(*no);

dcl-pi P629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'

dcl-ds theTable extname('T87') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T87 LIMIT 1;

theCharVar = 'Hello from P629';
dsply theCharVar;
callp localProc();
P313();
P182();
P275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P629 in the procedure';
end-proc;