**free

ctl-opt dftactgrp(*no);

dcl-pi P2197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1621.rpgleinc'
/copy 'qrpgleref/P2191.rpgleinc'
/copy 'qrpgleref/P778.rpgleinc'

dcl-ds theTable extname('T841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T841 LIMIT 1;

theCharVar = 'Hello from P2197';
dsply theCharVar;
callp localProc();
P1621();
P2191();
P778();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2197 in the procedure';
end-proc;