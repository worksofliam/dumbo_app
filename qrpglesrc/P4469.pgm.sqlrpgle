**free

ctl-opt dftactgrp(*no);

dcl-pi P4469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P2660.rpgleinc'
/copy 'qrpgleref/P2166.rpgleinc'

dcl-ds theTable extname('T996') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T996 LIMIT 1;

theCharVar = 'Hello from P4469';
dsply theCharVar;
callp localProc();
P283();
P2660();
P2166();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4469 in the procedure';
end-proc;