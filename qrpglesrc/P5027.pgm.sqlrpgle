**free

ctl-opt dftactgrp(*no);

dcl-pi P5027;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4875.rpgleinc'
/copy 'qrpgleref/P926.rpgleinc'
/copy 'qrpgleref/P2682.rpgleinc'

dcl-ds theTable extname('T253') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T253 LIMIT 1;

theCharVar = 'Hello from P5027';
dsply theCharVar;
callp localProc();
P4875();
P926();
P2682();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5027 in the procedure';
end-proc;