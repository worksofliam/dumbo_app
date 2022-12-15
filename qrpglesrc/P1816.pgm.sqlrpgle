**free

ctl-opt dftactgrp(*no);

dcl-pi P1816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1438.rpgleinc'
/copy 'qrpgleref/P1230.rpgleinc'
/copy 'qrpgleref/P1626.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P1816';
dsply theCharVar;
callp localProc();
P1438();
P1230();
P1626();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1816 in the procedure';
end-proc;