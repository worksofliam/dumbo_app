**free

ctl-opt dftactgrp(*no);

dcl-pi P1999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1788.rpgleinc'
/copy 'qrpgleref/P1723.rpgleinc'
/copy 'qrpgleref/P1138.rpgleinc'

dcl-ds theTable extname('T1169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1169 LIMIT 1;

theCharVar = 'Hello from P1999';
dsply theCharVar;
callp localProc();
P1788();
P1723();
P1138();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1999 in the procedure';
end-proc;