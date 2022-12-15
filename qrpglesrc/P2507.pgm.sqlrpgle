**free

ctl-opt dftactgrp(*no);

dcl-pi P2507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P1811.rpgleinc'
/copy 'qrpgleref/P2224.rpgleinc'

dcl-ds theTable extname('T822') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T822 LIMIT 1;

theCharVar = 'Hello from P2507';
dsply theCharVar;
callp localProc();
P988();
P1811();
P2224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2507 in the procedure';
end-proc;