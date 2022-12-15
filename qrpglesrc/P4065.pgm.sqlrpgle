**free

ctl-opt dftactgrp(*no);

dcl-pi P4065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P2149.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'

dcl-ds theTable extname('T1645') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1645 LIMIT 1;

theCharVar = 'Hello from P4065';
dsply theCharVar;
callp localProc();
P227();
P2149();
P213();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4065 in the procedure';
end-proc;