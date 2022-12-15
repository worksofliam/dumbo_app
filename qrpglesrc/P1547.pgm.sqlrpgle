**free

ctl-opt dftactgrp(*no);

dcl-pi P1547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P856.rpgleinc'

dcl-ds theTable extname('T1487') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1487 LIMIT 1;

theCharVar = 'Hello from P1547';
dsply theCharVar;
callp localProc();
P22();
P78();
P856();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1547 in the procedure';
end-proc;