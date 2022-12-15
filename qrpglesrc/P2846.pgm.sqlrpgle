**free

ctl-opt dftactgrp(*no);

dcl-pi P2846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P2548.rpgleinc'
/copy 'qrpgleref/P1016.rpgleinc'

dcl-ds theTable extname('T1075') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1075 LIMIT 1;

theCharVar = 'Hello from P2846';
dsply theCharVar;
callp localProc();
P791();
P2548();
P1016();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2846 in the procedure';
end-proc;