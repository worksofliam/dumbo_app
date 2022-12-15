**free

ctl-opt dftactgrp(*no);

dcl-pi P1867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P865.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'

dcl-ds theTable extname('T419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T419 LIMIT 1;

theCharVar = 'Hello from P1867';
dsply theCharVar;
callp localProc();
P865();
P9();
P678();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1867 in the procedure';
end-proc;