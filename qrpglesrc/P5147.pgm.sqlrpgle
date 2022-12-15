**free

ctl-opt dftactgrp(*no);

dcl-pi P5147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P837.rpgleinc'
/copy 'qrpgleref/P4097.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'

dcl-ds theTable extname('T384') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T384 LIMIT 1;

theCharVar = 'Hello from P5147';
dsply theCharVar;
callp localProc();
P837();
P4097();
P787();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5147 in the procedure';
end-proc;