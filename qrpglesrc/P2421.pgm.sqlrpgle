**free

ctl-opt dftactgrp(*no);

dcl-pi P2421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P674.rpgleinc'
/copy 'qrpgleref/P2023.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'

dcl-ds theTable extname('T805') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T805 LIMIT 1;

theCharVar = 'Hello from P2421';
dsply theCharVar;
callp localProc();
P674();
P2023();
P646();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2421 in the procedure';
end-proc;