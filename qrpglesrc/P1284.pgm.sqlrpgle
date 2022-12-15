**free

ctl-opt dftactgrp(*no);

dcl-pi P1284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1017.rpgleinc'
/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'

dcl-ds theTable extname('T1052') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1052 LIMIT 1;

theCharVar = 'Hello from P1284';
dsply theCharVar;
callp localProc();
P1017();
P1254();
P580();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1284 in the procedure';
end-proc;