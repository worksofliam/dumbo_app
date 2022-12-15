**free

ctl-opt dftactgrp(*no);

dcl-pi P3243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3160.rpgleinc'
/copy 'qrpgleref/P1263.rpgleinc'
/copy 'qrpgleref/P1769.rpgleinc'

dcl-ds theTable extname('T1184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1184 LIMIT 1;

theCharVar = 'Hello from P3243';
dsply theCharVar;
callp localProc();
P3160();
P1263();
P1769();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3243 in the procedure';
end-proc;