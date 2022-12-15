**free

ctl-opt dftactgrp(*no);

dcl-pi P2222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P1143.rpgleinc'
/copy 'qrpgleref/P1927.rpgleinc'

dcl-ds theTable extname('T1783') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1783 LIMIT 1;

theCharVar = 'Hello from P2222';
dsply theCharVar;
callp localProc();
P346();
P1143();
P1927();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2222 in the procedure';
end-proc;