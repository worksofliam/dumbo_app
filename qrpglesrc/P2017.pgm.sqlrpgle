**free

ctl-opt dftactgrp(*no);

dcl-pi P2017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1284.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P1554.rpgleinc'

dcl-ds theTable extname('T795') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T795 LIMIT 1;

theCharVar = 'Hello from P2017';
dsply theCharVar;
callp localProc();
P1284();
P329();
P1554();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2017 in the procedure';
end-proc;