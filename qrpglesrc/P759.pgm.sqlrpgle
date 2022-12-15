**free

ctl-opt dftactgrp(*no);

dcl-pi P759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P709.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T996') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T996 LIMIT 1;

theCharVar = 'Hello from P759';
dsply theCharVar;
callp localProc();
P709();
P25();
P139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P759 in the procedure';
end-proc;