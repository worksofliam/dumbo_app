**free

ctl-opt dftactgrp(*no);

dcl-pi P619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P619';
dsply theCharVar;
callp localProc();
P197();
P174();
P570();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P619 in the procedure';
end-proc;