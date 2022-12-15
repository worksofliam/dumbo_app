**free

ctl-opt dftactgrp(*no);

dcl-pi P3675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds theTable extname('T1047') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1047 LIMIT 1;

theCharVar = 'Hello from P3675';
dsply theCharVar;
callp localProc();
P526();
P619();
P757();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3675 in the procedure';
end-proc;