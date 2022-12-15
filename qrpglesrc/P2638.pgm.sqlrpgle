**free

ctl-opt dftactgrp(*no);

dcl-pi P2638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'
/copy 'qrpgleref/P1441.rpgleinc'

dcl-ds theTable extname('T501') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T501 LIMIT 1;

theCharVar = 'Hello from P2638';
dsply theCharVar;
callp localProc();
P839();
P1566();
P1441();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2638 in the procedure';
end-proc;