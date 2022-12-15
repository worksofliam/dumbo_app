**free

ctl-opt dftactgrp(*no);

dcl-pi P590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T779') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T779 LIMIT 1;

theCharVar = 'Hello from P590';
dsply theCharVar;
callp localProc();
P557();
P280();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P590 in the procedure';
end-proc;