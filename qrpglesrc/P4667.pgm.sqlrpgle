**free

ctl-opt dftactgrp(*no);

dcl-pi P4667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2822.rpgleinc'
/copy 'qrpgleref/P2530.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'

dcl-ds theTable extname('T841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T841 LIMIT 1;

theCharVar = 'Hello from P4667';
dsply theCharVar;
callp localProc();
P2822();
P2530();
P1677();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4667 in the procedure';
end-proc;