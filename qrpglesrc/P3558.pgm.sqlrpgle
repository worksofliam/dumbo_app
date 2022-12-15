**free

ctl-opt dftactgrp(*no);

dcl-pi P3558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3303.rpgleinc'
/copy 'qrpgleref/P1240.rpgleinc'
/copy 'qrpgleref/P1957.rpgleinc'

dcl-ds theTable extname('T1066') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1066 LIMIT 1;

theCharVar = 'Hello from P3558';
dsply theCharVar;
callp localProc();
P3303();
P1240();
P1957();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3558 in the procedure';
end-proc;