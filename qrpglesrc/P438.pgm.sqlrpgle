**free

ctl-opt dftactgrp(*no);

dcl-pi P438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T521') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T521 LIMIT 1;

theCharVar = 'Hello from P438';
dsply theCharVar;
callp localProc();
P382();
P95();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P438 in the procedure';
end-proc;