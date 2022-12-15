**free

ctl-opt dftactgrp(*no);

dcl-pi P1408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P999.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P1211.rpgleinc'

dcl-ds theTable extname('T974') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T974 LIMIT 1;

theCharVar = 'Hello from P1408';
dsply theCharVar;
callp localProc();
P999();
P875();
P1211();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1408 in the procedure';
end-proc;