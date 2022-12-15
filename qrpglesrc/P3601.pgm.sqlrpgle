**free

ctl-opt dftactgrp(*no);

dcl-pi P3601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1240.rpgleinc'
/copy 'qrpgleref/P2201.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P3601';
dsply theCharVar;
callp localProc();
P1240();
P2201();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3601 in the procedure';
end-proc;