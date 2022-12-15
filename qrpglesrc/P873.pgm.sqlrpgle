**free

ctl-opt dftactgrp(*no);

dcl-pi P873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'

dcl-ds theTable extname('T499') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T499 LIMIT 1;

theCharVar = 'Hello from P873';
dsply theCharVar;
callp localProc();
P187();
P27();
P657();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P873 in the procedure';
end-proc;