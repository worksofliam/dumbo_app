**free

ctl-opt dftactgrp(*no);

dcl-pi P2708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P2341.rpgleinc'
/copy 'qrpgleref/P2614.rpgleinc'

dcl-ds theTable extname('T1137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1137 LIMIT 1;

theCharVar = 'Hello from P2708';
dsply theCharVar;
callp localProc();
P1096();
P2341();
P2614();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2708 in the procedure';
end-proc;