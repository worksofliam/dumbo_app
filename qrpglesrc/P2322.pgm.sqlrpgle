**free

ctl-opt dftactgrp(*no);

dcl-pi P2322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P1153.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'

dcl-ds theTable extname('T1204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1204 LIMIT 1;

theCharVar = 'Hello from P2322';
dsply theCharVar;
callp localProc();
P543();
P1153();
P220();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2322 in the procedure';
end-proc;