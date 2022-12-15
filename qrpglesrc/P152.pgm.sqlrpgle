**free

ctl-opt dftactgrp(*no);

dcl-pi P152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds theTable extname('T721') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T721 LIMIT 1;

theCharVar = 'Hello from P152';
dsply theCharVar;
callp localProc();
P1();
P93();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P152 in the procedure';
end-proc;