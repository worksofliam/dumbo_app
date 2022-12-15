**free

ctl-opt dftactgrp(*no);

dcl-pi P2936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2766.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P1362.rpgleinc'

dcl-ds theTable extname('T819') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T819 LIMIT 1;

theCharVar = 'Hello from P2936';
dsply theCharVar;
callp localProc();
P2766();
P1115();
P1362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2936 in the procedure';
end-proc;