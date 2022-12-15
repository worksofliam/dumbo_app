**free

ctl-opt dftactgrp(*no);

dcl-pi P1929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P1852.rpgleinc'

dcl-ds theTable extname('T1632') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1632 LIMIT 1;

theCharVar = 'Hello from P1929';
dsply theCharVar;
callp localProc();
P1365();
P334();
P1852();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1929 in the procedure';
end-proc;