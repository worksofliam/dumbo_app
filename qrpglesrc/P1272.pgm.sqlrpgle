**free

ctl-opt dftactgrp(*no);

dcl-pi P1272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P1037.rpgleinc'

dcl-ds theTable extname('T294') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T294 LIMIT 1;

theCharVar = 'Hello from P1272';
dsply theCharVar;
callp localProc();
P783();
P191();
P1037();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1272 in the procedure';
end-proc;