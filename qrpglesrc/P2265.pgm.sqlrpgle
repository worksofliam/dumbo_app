**free

ctl-opt dftactgrp(*no);

dcl-pi P2265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1880.rpgleinc'
/copy 'qrpgleref/P2015.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'

dcl-ds theTable extname('T891') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T891 LIMIT 1;

theCharVar = 'Hello from P2265';
dsply theCharVar;
callp localProc();
P1880();
P2015();
P208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2265 in the procedure';
end-proc;