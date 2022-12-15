**free

ctl-opt dftactgrp(*no);

dcl-pi P4997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4458.rpgleinc'
/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P1034.rpgleinc'

dcl-ds theTable extname('T1794') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1794 LIMIT 1;

theCharVar = 'Hello from P4997';
dsply theCharVar;
callp localProc();
P4458();
P1829();
P1034();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4997 in the procedure';
end-proc;