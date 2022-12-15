**free

ctl-opt dftactgrp(*no);

dcl-pi P709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P709';
dsply theCharVar;
callp localProc();
P147();
P66();
P553();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P709 in the procedure';
end-proc;