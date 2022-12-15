**free

ctl-opt dftactgrp(*no);

dcl-pi P5122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1924.rpgleinc'
/copy 'qrpgleref/P1172.rpgleinc'
/copy 'qrpgleref/P2650.rpgleinc'

dcl-ds theTable extname('T1440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1440 LIMIT 1;

theCharVar = 'Hello from P5122';
dsply theCharVar;
callp localProc();
P1924();
P1172();
P2650();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5122 in the procedure';
end-proc;