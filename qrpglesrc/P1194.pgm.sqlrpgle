**free

ctl-opt dftactgrp(*no);

dcl-pi P1194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P411.rpgleinc'
/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'

dcl-ds theTable extname('T387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T387 LIMIT 1;

theCharVar = 'Hello from P1194';
dsply theCharVar;
callp localProc();
P411();
P988();
P435();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1194 in the procedure';
end-proc;