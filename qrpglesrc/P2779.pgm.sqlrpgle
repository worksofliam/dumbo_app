**free

ctl-opt dftactgrp(*no);

dcl-pi P2779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1439.rpgleinc'
/copy 'qrpgleref/P1451.rpgleinc'
/copy 'qrpgleref/P2070.rpgleinc'

dcl-ds theTable extname('T746') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T746 LIMIT 1;

theCharVar = 'Hello from P2779';
dsply theCharVar;
callp localProc();
P1439();
P1451();
P2070();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2779 in the procedure';
end-proc;