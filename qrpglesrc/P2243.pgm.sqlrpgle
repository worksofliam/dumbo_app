**free

ctl-opt dftactgrp(*no);

dcl-pi P2243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P1532.rpgleinc'
/copy 'qrpgleref/P1691.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P2243';
dsply theCharVar;
callp localProc();
P673();
P1532();
P1691();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2243 in the procedure';
end-proc;