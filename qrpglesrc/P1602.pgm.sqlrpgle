**free

ctl-opt dftactgrp(*no);

dcl-pi P1602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P738.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'

dcl-ds theTable extname('T615') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T615 LIMIT 1;

theCharVar = 'Hello from P1602';
dsply theCharVar;
callp localProc();
P1146();
P738();
P619();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1602 in the procedure';
end-proc;