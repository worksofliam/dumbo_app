**free

ctl-opt dftactgrp(*no);

dcl-pi P1404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1286.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T1301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1301 LIMIT 1;

theCharVar = 'Hello from P1404';
dsply theCharVar;
callp localProc();
P1286();
P955();
P192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1404 in the procedure';
end-proc;