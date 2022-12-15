**free

ctl-opt dftactgrp(*no);

dcl-pi P1414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P1414';
dsply theCharVar;
callp localProc();
P980();
P43();
P662();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1414 in the procedure';
end-proc;