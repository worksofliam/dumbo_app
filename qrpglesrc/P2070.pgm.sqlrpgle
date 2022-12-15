**free

ctl-opt dftactgrp(*no);

dcl-pi P2070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P919.rpgleinc'
/copy 'qrpgleref/P1779.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'

dcl-ds theTable extname('T437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T437 LIMIT 1;

theCharVar = 'Hello from P2070';
dsply theCharVar;
callp localProc();
P919();
P1779();
P435();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2070 in the procedure';
end-proc;