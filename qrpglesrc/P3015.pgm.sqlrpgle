**free

ctl-opt dftactgrp(*no);

dcl-pi P3015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2153.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'

dcl-ds theTable extname('T646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T646 LIMIT 1;

theCharVar = 'Hello from P3015';
dsply theCharVar;
callp localProc();
P2153();
P1150();
P854();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3015 in the procedure';
end-proc;