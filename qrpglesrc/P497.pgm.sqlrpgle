**free

ctl-opt dftactgrp(*no);

dcl-pi P497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'

dcl-ds theTable extname('T271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T271 LIMIT 1;

theCharVar = 'Hello from P497';
dsply theCharVar;
callp localProc();
P254();
P118();
P461();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P497 in the procedure';
end-proc;