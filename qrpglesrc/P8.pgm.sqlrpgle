**free

ctl-opt dftactgrp(*no);

dcl-pi P8;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T223 LIMIT 1;

theCharVar = 'Hello from P8';
dsply theCharVar;
callp localProc();
P0();
P7();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P8 in the procedure';
end-proc;