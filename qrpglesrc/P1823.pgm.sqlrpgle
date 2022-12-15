**free

ctl-opt dftactgrp(*no);

dcl-pi P1823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P1411.rpgleinc'
/copy 'qrpgleref/P1631.rpgleinc'

dcl-ds theTable extname('T1859') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1859 LIMIT 1;

theCharVar = 'Hello from P1823';
dsply theCharVar;
callp localProc();
P83();
P1411();
P1631();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1823 in the procedure';
end-proc;