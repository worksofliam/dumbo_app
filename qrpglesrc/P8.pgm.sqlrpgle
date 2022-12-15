**free

ctl-opt dftactgrp(*no);

dcl-pi P8;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T1797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1797 LIMIT 1;

theCharVar = 'Hello from P8';
dsply theCharVar;
callp localProc();
P6();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P8 in the procedure';
end-proc;