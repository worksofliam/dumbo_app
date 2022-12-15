**free

ctl-opt dftactgrp(*no);

dcl-pi P2490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2030.rpgleinc'
/copy 'qrpgleref/P1667.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'

dcl-ds theTable extname('T1513') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1513 LIMIT 1;

theCharVar = 'Hello from P2490';
dsply theCharVar;
callp localProc();
P2030();
P1667();
P1051();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2490 in the procedure';
end-proc;