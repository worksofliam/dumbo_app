**free

ctl-opt dftactgrp(*no);

dcl-pi P3180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1336.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'

dcl-ds theTable extname('T677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T677 LIMIT 1;

theCharVar = 'Hello from P3180';
dsply theCharVar;
callp localProc();
P1336();
P646();
P314();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3180 in the procedure';
end-proc;