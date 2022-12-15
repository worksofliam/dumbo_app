**free

ctl-opt dftactgrp(*no);

dcl-pi P1431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1064.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P1296.rpgleinc'

dcl-ds theTable extname('T587') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T587 LIMIT 1;

theCharVar = 'Hello from P1431';
dsply theCharVar;
callp localProc();
P1064();
P957();
P1296();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1431 in the procedure';
end-proc;