**free

ctl-opt dftactgrp(*no);

dcl-pi P2830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2792.rpgleinc'
/copy 'qrpgleref/P1343.rpgleinc'
/copy 'qrpgleref/P2300.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P2830';
dsply theCharVar;
callp localProc();
P2792();
P1343();
P2300();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2830 in the procedure';
end-proc;