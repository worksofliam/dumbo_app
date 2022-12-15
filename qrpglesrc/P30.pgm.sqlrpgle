**free

ctl-opt dftactgrp(*no);

dcl-pi P30;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P30';
dsply theCharVar;
callp localProc();
P13();
P21();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P30 in the procedure';
end-proc;