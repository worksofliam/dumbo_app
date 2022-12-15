**free

ctl-opt dftactgrp(*no);

dcl-pi P1217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P468.rpgleinc'

dcl-ds theTable extname('T288') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T288 LIMIT 1;

theCharVar = 'Hello from P1217';
dsply theCharVar;
callp localProc();
P875();
P628();
P468();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1217 in the procedure';
end-proc;