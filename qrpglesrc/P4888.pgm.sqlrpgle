**free

ctl-opt dftactgrp(*no);

dcl-pi P4888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3700.rpgleinc'
/copy 'qrpgleref/P2560.rpgleinc'
/copy 'qrpgleref/P3491.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P4888';
dsply theCharVar;
callp localProc();
P3700();
P2560();
P3491();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4888 in the procedure';
end-proc;