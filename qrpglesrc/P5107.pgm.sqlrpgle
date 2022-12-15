**free

ctl-opt dftactgrp(*no);

dcl-pi P5107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3773.rpgleinc'
/copy 'qrpgleref/P4317.rpgleinc'
/copy 'qrpgleref/P3261.rpgleinc'

dcl-ds theTable extname('T38') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T38 LIMIT 1;

theCharVar = 'Hello from P5107';
dsply theCharVar;
callp localProc();
P3773();
P4317();
P3261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5107 in the procedure';
end-proc;