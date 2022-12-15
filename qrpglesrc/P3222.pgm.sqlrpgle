**free

ctl-opt dftactgrp(*no);

dcl-pi P3222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P2261.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P3222';
dsply theCharVar;
callp localProc();
P1919();
P2261();
P882();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3222 in the procedure';
end-proc;