**free

ctl-opt dftactgrp(*no);

dcl-pi P167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds theTable extname('T86') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T86 LIMIT 1;

theCharVar = 'Hello from P167';
dsply theCharVar;
callp localProc();
P156();
P93();
P149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P167 in the procedure';
end-proc;