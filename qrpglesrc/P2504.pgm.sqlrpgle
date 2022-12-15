**free

ctl-opt dftactgrp(*no);

dcl-pi P2504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1414.rpgleinc'
/copy 'qrpgleref/P1459.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'

dcl-ds theTable extname('T1229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1229 LIMIT 1;

theCharVar = 'Hello from P2504';
dsply theCharVar;
callp localProc();
P1414();
P1459();
P323();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2504 in the procedure';
end-proc;