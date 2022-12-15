**free

ctl-opt dftactgrp(*no);

dcl-pi P2795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P2394.rpgleinc'
/copy 'qrpgleref/P1712.rpgleinc'

dcl-ds theTable extname('T1514') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1514 LIMIT 1;

theCharVar = 'Hello from P2795';
dsply theCharVar;
callp localProc();
P727();
P2394();
P1712();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2795 in the procedure';
end-proc;