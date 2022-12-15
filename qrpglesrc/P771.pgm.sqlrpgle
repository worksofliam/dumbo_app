**free

ctl-opt dftactgrp(*no);

dcl-pi P771;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P636.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P771';
dsply theCharVar;
callp localProc();
P636();
P513();
P246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P771 in the procedure';
end-proc;