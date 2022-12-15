**free

ctl-opt dftactgrp(*no);

dcl-pi P703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'

dcl-ds theTable extname('T1774') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1774 LIMIT 1;

theCharVar = 'Hello from P703';
dsply theCharVar;
callp localProc();
P568();
P259();
P676();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P703 in the procedure';
end-proc;