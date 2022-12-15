**free

ctl-opt dftactgrp(*no);

dcl-pi P4392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P4219.rpgleinc'
/copy 'qrpgleref/P3756.rpgleinc'

dcl-ds theTable extname('T1730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1730 LIMIT 1;

theCharVar = 'Hello from P4392';
dsply theCharVar;
callp localProc();
P40();
P4219();
P3756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4392 in the procedure';
end-proc;