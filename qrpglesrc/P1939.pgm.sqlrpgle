**free

ctl-opt dftactgrp(*no);

dcl-pi P1939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1647.rpgleinc'
/copy 'qrpgleref/P1494.rpgleinc'
/copy 'qrpgleref/P1662.rpgleinc'

dcl-ds theTable extname('T976') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T976 LIMIT 1;

theCharVar = 'Hello from P1939';
dsply theCharVar;
callp localProc();
P1647();
P1494();
P1662();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1939 in the procedure';
end-proc;