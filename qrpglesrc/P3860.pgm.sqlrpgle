**free

ctl-opt dftactgrp(*no);

dcl-pi P3860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2462.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'
/copy 'qrpgleref/P2294.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P3860';
dsply theCharVar;
callp localProc();
P2462();
P1732();
P2294();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3860 in the procedure';
end-proc;