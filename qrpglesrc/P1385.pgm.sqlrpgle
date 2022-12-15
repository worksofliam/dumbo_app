**free

ctl-opt dftactgrp(*no);

dcl-pi P1385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1299.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T1088') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1088 LIMIT 1;

theCharVar = 'Hello from P1385';
dsply theCharVar;
callp localProc();
P1299();
P21();
P68();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1385 in the procedure';
end-proc;