**free

ctl-opt dftactgrp(*no);

dcl-pi P11;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P11';
dsply theCharVar;
callp localProc();
P9();
P3();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P11 in the procedure';
end-proc;