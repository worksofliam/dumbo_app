**free

ctl-opt dftactgrp(*no);

dcl-pi P5510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2448.rpgleinc'
/copy 'qrpgleref/P3929.rpgleinc'
/copy 'qrpgleref/P3538.rpgleinc'

dcl-ds theTable extname('T500') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T500 LIMIT 1;

theCharVar = 'Hello from P5510';
dsply theCharVar;
callp localProc();
P2448();
P3929();
P3538();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5510 in the procedure';
end-proc;