**free

ctl-opt dftactgrp(*no);

dcl-pi P2009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P1089.rpgleinc'
/copy 'qrpgleref/P1675.rpgleinc'

dcl-ds theTable extname('T867') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T867 LIMIT 1;

theCharVar = 'Hello from P2009';
dsply theCharVar;
callp localProc();
P734();
P1089();
P1675();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2009 in the procedure';
end-proc;