**free

ctl-opt dftactgrp(*no);

dcl-pi P2000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'

dcl-ds theTable extname('T672') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T672 LIMIT 1;

theCharVar = 'Hello from P2000';
dsply theCharVar;
callp localProc();
P624();
P844();
P1156();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2000 in the procedure';
end-proc;