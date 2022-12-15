**free

ctl-opt dftactgrp(*no);

dcl-pi P2303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P1591.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T433 LIMIT 1;

theCharVar = 'Hello from P2303';
dsply theCharVar;
callp localProc();
P232();
P1591();
P143();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2303 in the procedure';
end-proc;