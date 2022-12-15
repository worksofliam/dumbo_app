**free

ctl-opt dftactgrp(*no);

dcl-pi P1482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1379.rpgleinc'
/copy 'qrpgleref/P878.rpgleinc'
/copy 'qrpgleref/P813.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P1482';
dsply theCharVar;
callp localProc();
P1379();
P878();
P813();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1482 in the procedure';
end-proc;