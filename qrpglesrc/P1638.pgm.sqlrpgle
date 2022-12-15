**free

ctl-opt dftactgrp(*no);

dcl-pi P1638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1276.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds theTable extname('T461') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T461 LIMIT 1;

theCharVar = 'Hello from P1638';
dsply theCharVar;
callp localProc();
P1276();
P905();
P438();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1638 in the procedure';
end-proc;