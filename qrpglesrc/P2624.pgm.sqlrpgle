**free

ctl-opt dftactgrp(*no);

dcl-pi P2624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1967.rpgleinc'
/copy 'qrpgleref/P1946.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'

dcl-ds theTable extname('T530') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T530 LIMIT 1;

theCharVar = 'Hello from P2624';
dsply theCharVar;
callp localProc();
P1967();
P1946();
P329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2624 in the procedure';
end-proc;