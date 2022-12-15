**free

ctl-opt dftactgrp(*no);

dcl-pi P247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P247';
dsply theCharVar;
callp localProc();
P95();
P72();
P135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P247 in the procedure';
end-proc;