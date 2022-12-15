**free

ctl-opt dftactgrp(*no);

dcl-pi P2500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P946.rpgleinc'
/copy 'qrpgleref/P1540.rpgleinc'
/copy 'qrpgleref/P1994.rpgleinc'

dcl-ds theTable extname('T351') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T351 LIMIT 1;

theCharVar = 'Hello from P2500';
dsply theCharVar;
callp localProc();
P946();
P1540();
P1994();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2500 in the procedure';
end-proc;