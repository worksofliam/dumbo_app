**free

ctl-opt dftactgrp(*no);

dcl-pi P2463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1570.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P982.rpgleinc'

dcl-ds theTable extname('T1093') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1093 LIMIT 1;

theCharVar = 'Hello from P2463';
dsply theCharVar;
callp localProc();
P1570();
P855();
P982();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2463 in the procedure';
end-proc;