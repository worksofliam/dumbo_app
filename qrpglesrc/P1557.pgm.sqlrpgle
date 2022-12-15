**free

ctl-opt dftactgrp(*no);

dcl-pi P1557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1202.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'

dcl-ds theTable extname('T254') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T254 LIMIT 1;

theCharVar = 'Hello from P1557';
dsply theCharVar;
callp localProc();
P1202();
P58();
P120();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1557 in the procedure';
end-proc;