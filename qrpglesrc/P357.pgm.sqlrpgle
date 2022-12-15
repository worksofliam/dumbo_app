**free

ctl-opt dftactgrp(*no);

dcl-pi P357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T1455') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1455 LIMIT 1;

theCharVar = 'Hello from P357';
dsply theCharVar;
callp localProc();
P191();
P335();
P95();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P357 in the procedure';
end-proc;