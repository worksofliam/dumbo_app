**free

ctl-opt dftactgrp(*no);

dcl-pi P4416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2043.rpgleinc'
/copy 'qrpgleref/P3478.rpgleinc'
/copy 'qrpgleref/P3597.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P4416';
dsply theCharVar;
callp localProc();
P2043();
P3478();
P3597();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4416 in the procedure';
end-proc;