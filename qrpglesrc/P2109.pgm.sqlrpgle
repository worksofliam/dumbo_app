**free

ctl-opt dftactgrp(*no);

dcl-pi P2109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P815.rpgleinc'
/copy 'qrpgleref/P510.rpgleinc'

dcl-ds theTable extname('T831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T831 LIMIT 1;

theCharVar = 'Hello from P2109';
dsply theCharVar;
callp localProc();
P1231();
P815();
P510();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2109 in the procedure';
end-proc;