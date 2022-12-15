**free

ctl-opt dftactgrp(*no);

dcl-pi P1648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P910.rpgleinc'
/copy 'qrpgleref/P779.rpgleinc'
/copy 'qrpgleref/P202.rpgleinc'

dcl-ds theTable extname('T750') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T750 LIMIT 1;

theCharVar = 'Hello from P1648';
dsply theCharVar;
callp localProc();
P910();
P779();
P202();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1648 in the procedure';
end-proc;