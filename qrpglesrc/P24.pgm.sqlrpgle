**free

ctl-opt dftactgrp(*no);

dcl-pi P24;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T178 LIMIT 1;

theCharVar = 'Hello from P24';
dsply theCharVar;
callp localProc();
P10();
P11();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P24 in the procedure';
end-proc;