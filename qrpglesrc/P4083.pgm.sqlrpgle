**free

ctl-opt dftactgrp(*no);

dcl-pi P4083;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P3855.rpgleinc'
/copy 'qrpgleref/P1858.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P4083';
dsply theCharVar;
callp localProc();
P663();
P3855();
P1858();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4083 in the procedure';
end-proc;