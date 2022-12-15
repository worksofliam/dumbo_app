**free

ctl-opt dftactgrp(*no);

dcl-pi P1559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1490.rpgleinc'
/copy 'qrpgleref/P1109.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds theTable extname('T735') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T735 LIMIT 1;

theCharVar = 'Hello from P1559';
dsply theCharVar;
callp localProc();
P1490();
P1109();
P820();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1559 in the procedure';
end-proc;