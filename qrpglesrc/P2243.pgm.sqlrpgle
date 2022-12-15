**free

ctl-opt dftactgrp(*no);

dcl-pi P2243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P1971.rpgleinc'
/copy 'qrpgleref/P1862.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P2243';
dsply theCharVar;
callp localProc();
P527();
P1971();
P1862();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2243 in the procedure';
end-proc;