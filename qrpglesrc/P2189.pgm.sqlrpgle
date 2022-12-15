**free

ctl-opt dftactgrp(*no);

dcl-pi P2189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P959.rpgleinc'
/copy 'qrpgleref/P1693.rpgleinc'

dcl-ds theTable extname('T1844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1844 LIMIT 1;

theCharVar = 'Hello from P2189';
dsply theCharVar;
callp localProc();
P202();
P959();
P1693();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2189 in the procedure';
end-proc;