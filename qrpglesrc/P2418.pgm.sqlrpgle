**free

ctl-opt dftactgrp(*no);

dcl-pi P2418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1688.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P1592.rpgleinc'

dcl-ds theTable extname('T213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T213 LIMIT 1;

theCharVar = 'Hello from P2418';
dsply theCharVar;
callp localProc();
P1688();
P396();
P1592();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2418 in the procedure';
end-proc;