**free

ctl-opt dftactgrp(*no);

dcl-pi P1204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P857.rpgleinc'
/copy 'qrpgleref/P1113.rpgleinc'

dcl-ds theTable extname('T1506') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1506 LIMIT 1;

theCharVar = 'Hello from P1204';
dsply theCharVar;
callp localProc();
P889();
P857();
P1113();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1204 in the procedure';
end-proc;