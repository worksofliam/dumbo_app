**free

ctl-opt dftactgrp(*no);

dcl-pi P726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'

dcl-ds theTable extname('T41') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T41 LIMIT 1;

theCharVar = 'Hello from P726';
dsply theCharVar;
callp localProc();
P689();
P382();
P645();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P726 in the procedure';
end-proc;