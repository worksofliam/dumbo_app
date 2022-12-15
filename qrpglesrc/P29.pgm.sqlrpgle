**free

ctl-opt dftactgrp(*no);

dcl-pi P29;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T1364') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1364 LIMIT 1;

theCharVar = 'Hello from P29';
dsply theCharVar;
callp localProc();
P8();
P1();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P29 in the procedure';
end-proc;