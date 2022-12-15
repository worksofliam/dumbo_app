**free

ctl-opt dftactgrp(*no);

dcl-pi P2940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P2489.rpgleinc'
/copy 'qrpgleref/P1962.rpgleinc'

dcl-ds theTable extname('T594') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T594 LIMIT 1;

theCharVar = 'Hello from P2940';
dsply theCharVar;
callp localProc();
P1829();
P2489();
P1962();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2940 in the procedure';
end-proc;