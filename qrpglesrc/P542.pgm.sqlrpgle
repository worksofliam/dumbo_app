**free

ctl-opt dftactgrp(*no);

dcl-pi P542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T1106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1106 LIMIT 1;

theCharVar = 'Hello from P542';
dsply theCharVar;
callp localProc();
P94();
P387();
P500();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P542 in the procedure';
end-proc;