**free

ctl-opt dftactgrp(*no);

dcl-pi P5558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1153.rpgleinc'
/copy 'qrpgleref/P1106.rpgleinc'
/copy 'qrpgleref/P4371.rpgleinc'

dcl-ds theTable extname('T1520') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1520 LIMIT 1;

theCharVar = 'Hello from P5558';
dsply theCharVar;
callp localProc();
P1153();
P1106();
P4371();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5558 in the procedure';
end-proc;