**free

ctl-opt dftactgrp(*no);

dcl-pi P2107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P1246.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'

dcl-ds theTable extname('T1213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1213 LIMIT 1;

theCharVar = 'Hello from P2107';
dsply theCharVar;
callp localProc();
P656();
P1246();
P1222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2107 in the procedure';
end-proc;