**free

ctl-opt dftactgrp(*no);

dcl-pi P1366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P1245.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'

dcl-ds theTable extname('T1169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1169 LIMIT 1;

theCharVar = 'Hello from P1366';
dsply theCharVar;
callp localProc();
P526();
P1245();
P548();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1366 in the procedure';
end-proc;