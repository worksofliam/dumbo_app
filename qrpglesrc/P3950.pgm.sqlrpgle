**free

ctl-opt dftactgrp(*no);

dcl-pi P3950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P1433.rpgleinc'
/copy 'qrpgleref/P3295.rpgleinc'

dcl-ds theTable extname('T1149') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1149 LIMIT 1;

theCharVar = 'Hello from P3950';
dsply theCharVar;
callp localProc();
P591();
P1433();
P3295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3950 in the procedure';
end-proc;