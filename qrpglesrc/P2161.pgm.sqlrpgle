**free

ctl-opt dftactgrp(*no);

dcl-pi P2161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P926.rpgleinc'
/copy 'qrpgleref/P1933.rpgleinc'
/copy 'qrpgleref/P1290.rpgleinc'

dcl-ds theTable extname('T760') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T760 LIMIT 1;

theCharVar = 'Hello from P2161';
dsply theCharVar;
callp localProc();
P926();
P1933();
P1290();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2161 in the procedure';
end-proc;