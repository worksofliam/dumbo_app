**free

ctl-opt dftactgrp(*no);

dcl-pi P331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T669') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T669 LIMIT 1;

theCharVar = 'Hello from P331';
dsply theCharVar;
callp localProc();
P173();
P35();
P192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P331 in the procedure';
end-proc;