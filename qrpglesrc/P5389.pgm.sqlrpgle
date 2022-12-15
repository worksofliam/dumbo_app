**free

ctl-opt dftactgrp(*no);

dcl-pi P5389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P2935.rpgleinc'
/copy 'qrpgleref/P1381.rpgleinc'

dcl-ds theTable extname('T1792') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1792 LIMIT 1;

theCharVar = 'Hello from P5389';
dsply theCharVar;
callp localProc();
P72();
P2935();
P1381();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5389 in the procedure';
end-proc;