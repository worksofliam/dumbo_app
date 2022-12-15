**free

ctl-opt dftactgrp(*no);

dcl-pi P1858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P1626.rpgleinc'
/copy 'qrpgleref/P1353.rpgleinc'

dcl-ds theTable extname('T1569') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1569 LIMIT 1;

theCharVar = 'Hello from P1858';
dsply theCharVar;
callp localProc();
P925();
P1626();
P1353();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1858 in the procedure';
end-proc;