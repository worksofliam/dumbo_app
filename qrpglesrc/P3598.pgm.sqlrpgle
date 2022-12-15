**free

ctl-opt dftactgrp(*no);

dcl-pi P3598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3418.rpgleinc'
/copy 'qrpgleref/P3592.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'

dcl-ds theTable extname('T1286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1286 LIMIT 1;

theCharVar = 'Hello from P3598';
dsply theCharVar;
callp localProc();
P3418();
P3592();
P523();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3598 in the procedure';
end-proc;