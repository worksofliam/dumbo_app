**free

ctl-opt dftactgrp(*no);

dcl-pi P2405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2362.rpgleinc'
/copy 'qrpgleref/P1200.rpgleinc'
/copy 'qrpgleref/P724.rpgleinc'

dcl-ds theTable extname('T966') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T966 LIMIT 1;

theCharVar = 'Hello from P2405';
dsply theCharVar;
callp localProc();
P2362();
P1200();
P724();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2405 in the procedure';
end-proc;