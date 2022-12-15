**free

ctl-opt dftactgrp(*no);

dcl-pi P4076;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1065.rpgleinc'
/copy 'qrpgleref/P3765.rpgleinc'
/copy 'qrpgleref/P3377.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P4076';
dsply theCharVar;
callp localProc();
P1065();
P3765();
P3377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4076 in the procedure';
end-proc;