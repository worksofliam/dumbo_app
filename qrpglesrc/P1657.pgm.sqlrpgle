**free

ctl-opt dftactgrp(*no);

dcl-pi P1657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1556.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P1657';
dsply theCharVar;
callp localProc();
P1556();
P503();
P722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1657 in the procedure';
end-proc;