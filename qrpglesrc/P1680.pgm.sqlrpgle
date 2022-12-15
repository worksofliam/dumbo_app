**free

ctl-opt dftactgrp(*no);

dcl-pi P1680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1500.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'

dcl-ds theTable extname('T1128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1128 LIMIT 1;

theCharVar = 'Hello from P1680';
dsply theCharVar;
callp localProc();
P1500();
P328();
P436();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1680 in the procedure';
end-proc;