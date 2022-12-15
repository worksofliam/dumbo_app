**free

ctl-opt dftactgrp(*no);

dcl-pi P5134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P3077.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'

dcl-ds theTable extname('T983') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T983 LIMIT 1;

theCharVar = 'Hello from P5134';
dsply theCharVar;
callp localProc();
P300();
P3077();
P841();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5134 in the procedure';
end-proc;