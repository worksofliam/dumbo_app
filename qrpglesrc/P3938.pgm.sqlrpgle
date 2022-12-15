**free

ctl-opt dftactgrp(*no);

dcl-pi P3938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1847.rpgleinc'
/copy 'qrpgleref/P2573.rpgleinc'
/copy 'qrpgleref/P2412.rpgleinc'

dcl-ds theTable extname('T1621') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1621 LIMIT 1;

theCharVar = 'Hello from P3938';
dsply theCharVar;
callp localProc();
P1847();
P2573();
P2412();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3938 in the procedure';
end-proc;