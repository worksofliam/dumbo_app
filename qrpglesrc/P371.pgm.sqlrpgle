**free

ctl-opt dftactgrp(*no);

dcl-pi P371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P291.rpgleinc'

dcl-ds theTable extname('T472') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T472 LIMIT 1;

theCharVar = 'Hello from P371';
dsply theCharVar;
callp localProc();
P138();
P299();
P291();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P371 in the procedure';
end-proc;