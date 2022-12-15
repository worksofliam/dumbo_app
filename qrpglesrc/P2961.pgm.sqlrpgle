**free

ctl-opt dftactgrp(*no);

dcl-pi P2961;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2851.rpgleinc'
/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T477') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T477 LIMIT 1;

theCharVar = 'Hello from P2961';
dsply theCharVar;
callp localProc();
P2851();
P971();
P500();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2961 in the procedure';
end-proc;