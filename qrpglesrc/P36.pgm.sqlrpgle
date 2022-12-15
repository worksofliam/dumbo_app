**free

ctl-opt dftactgrp(*no);

dcl-pi P36;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T257') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T257 LIMIT 1;

theCharVar = 'Hello from P36';
dsply theCharVar;
callp localProc();
P5();
P21();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P36 in the procedure';
end-proc;