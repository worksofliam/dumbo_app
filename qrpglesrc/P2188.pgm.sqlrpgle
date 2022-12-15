**free

ctl-opt dftactgrp(*no);

dcl-pi P2188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'
/copy 'qrpgleref/P1919.rpgleinc'

dcl-ds theTable extname('T56') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T56 LIMIT 1;

theCharVar = 'Hello from P2188';
dsply theCharVar;
callp localProc();
P175();
P1208();
P1919();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2188 in the procedure';
end-proc;