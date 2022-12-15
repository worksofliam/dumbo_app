**free

ctl-opt dftactgrp(*no);

dcl-pi P2731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1648.rpgleinc'
/copy 'qrpgleref/P1741.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'

dcl-ds theTable extname('T540') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T540 LIMIT 1;

theCharVar = 'Hello from P2731';
dsply theCharVar;
callp localProc();
P1648();
P1741();
P346();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2731 in the procedure';
end-proc;