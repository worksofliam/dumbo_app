**free

ctl-opt dftactgrp(*no);

dcl-pi P1808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1098.rpgleinc'
/copy 'qrpgleref/P1689.rpgleinc'
/copy 'qrpgleref/P1465.rpgleinc'

dcl-ds theTable extname('T120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T120 LIMIT 1;

theCharVar = 'Hello from P1808';
dsply theCharVar;
callp localProc();
P1098();
P1689();
P1465();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1808 in the procedure';
end-proc;