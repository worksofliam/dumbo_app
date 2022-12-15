**free

ctl-opt dftactgrp(*no);

dcl-pi P1576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P1086.rpgleinc'
/copy 'qrpgleref/P1429.rpgleinc'

dcl-ds theTable extname('T437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T437 LIMIT 1;

theCharVar = 'Hello from P1576';
dsply theCharVar;
callp localProc();
P232();
P1086();
P1429();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1576 in the procedure';
end-proc;