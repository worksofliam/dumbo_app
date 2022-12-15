**free

ctl-opt dftactgrp(*no);

dcl-pi P2247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P1547.rpgleinc'
/copy 'qrpgleref/P1739.rpgleinc'

dcl-ds theTable extname('T1174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1174 LIMIT 1;

theCharVar = 'Hello from P2247';
dsply theCharVar;
callp localProc();
P171();
P1547();
P1739();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2247 in the procedure';
end-proc;