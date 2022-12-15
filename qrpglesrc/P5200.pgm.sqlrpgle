**free

ctl-opt dftactgrp(*no);

dcl-pi P5200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P3729.rpgleinc'
/copy 'qrpgleref/P2722.rpgleinc'

dcl-ds theTable extname('T1020') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1020 LIMIT 1;

theCharVar = 'Hello from P5200';
dsply theCharVar;
callp localProc();
P209();
P3729();
P2722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5200 in the procedure';
end-proc;