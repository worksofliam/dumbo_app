**free

ctl-opt dftactgrp(*no);

dcl-pi P2440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2343.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P2286.rpgleinc'

dcl-ds theTable extname('T600') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T600 LIMIT 1;

theCharVar = 'Hello from P2440';
dsply theCharVar;
callp localProc();
P2343();
P561();
P2286();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2440 in the procedure';
end-proc;