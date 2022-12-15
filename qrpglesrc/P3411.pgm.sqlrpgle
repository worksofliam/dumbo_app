**free

ctl-opt dftactgrp(*no);

dcl-pi P3411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P2319.rpgleinc'
/copy 'qrpgleref/P1668.rpgleinc'

dcl-ds theTable extname('T489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T489 LIMIT 1;

theCharVar = 'Hello from P3411';
dsply theCharVar;
callp localProc();
P1800();
P2319();
P1668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3411 in the procedure';
end-proc;