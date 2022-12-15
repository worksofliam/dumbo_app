**free

ctl-opt dftactgrp(*no);

dcl-pi P2702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P2607.rpgleinc'

dcl-ds theTable extname('T616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T616 LIMIT 1;

theCharVar = 'Hello from P2702';
dsply theCharVar;
callp localProc();
P1088();
P495();
P2607();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2702 in the procedure';
end-proc;