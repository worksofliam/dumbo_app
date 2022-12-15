**free

ctl-opt dftactgrp(*no);

dcl-pi P2932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'

dcl-ds theTable extname('T341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T341 LIMIT 1;

theCharVar = 'Hello from P2932';
dsply theCharVar;
callp localProc();
P292();
P816();
P1783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2932 in the procedure';
end-proc;