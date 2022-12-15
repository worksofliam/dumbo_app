**free

ctl-opt dftactgrp(*no);

dcl-pi P2043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2024.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P1517.rpgleinc'

dcl-ds theTable extname('T933') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T933 LIMIT 1;

theCharVar = 'Hello from P2043';
dsply theCharVar;
callp localProc();
P2024();
P22();
P1517();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2043 in the procedure';
end-proc;