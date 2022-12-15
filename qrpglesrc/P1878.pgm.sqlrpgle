**free

ctl-opt dftactgrp(*no);

dcl-pi P1878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds theTable extname('T844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T844 LIMIT 1;

theCharVar = 'Hello from P1878';
dsply theCharVar;
callp localProc();
P147();
P433();
P757();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1878 in the procedure';
end-proc;