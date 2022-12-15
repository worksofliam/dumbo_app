**free

ctl-opt dftactgrp(*no);

dcl-pi P1910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P1541.rpgleinc'
/copy 'qrpgleref/P999.rpgleinc'

dcl-ds theTable extname('T638') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T638 LIMIT 1;

theCharVar = 'Hello from P1910';
dsply theCharVar;
callp localProc();
P562();
P1541();
P999();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1910 in the procedure';
end-proc;