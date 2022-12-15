**free

ctl-opt dftactgrp(*no);

dcl-pi P2718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2609.rpgleinc'
/copy 'qrpgleref/P1244.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'

dcl-ds theTable extname('T1830') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1830 LIMIT 1;

theCharVar = 'Hello from P2718';
dsply theCharVar;
callp localProc();
P2609();
P1244();
P129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2718 in the procedure';
end-proc;