**free

ctl-opt dftactgrp(*no);

dcl-pi P2377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2125.rpgleinc'
/copy 'qrpgleref/P2048.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'

dcl-ds theTable extname('T316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T316 LIMIT 1;

theCharVar = 'Hello from P2377';
dsply theCharVar;
callp localProc();
P2125();
P2048();
P1192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2377 in the procedure';
end-proc;