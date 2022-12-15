**free

ctl-opt dftactgrp(*no);

dcl-pi P2076;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1030.rpgleinc'
/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P2058.rpgleinc'

dcl-ds theTable extname('T1015') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1015 LIMIT 1;

theCharVar = 'Hello from P2076';
dsply theCharVar;
callp localProc();
P1030();
P1261();
P2058();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2076 in the procedure';
end-proc;