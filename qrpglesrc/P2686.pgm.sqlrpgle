**free

ctl-opt dftactgrp(*no);

dcl-pi P2686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P2368.rpgleinc'

dcl-ds theTable extname('T1798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1798 LIMIT 1;

theCharVar = 'Hello from P2686';
dsply theCharVar;
callp localProc();
P108();
P525();
P2368();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2686 in the procedure';
end-proc;