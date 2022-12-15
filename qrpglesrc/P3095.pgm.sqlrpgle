**free

ctl-opt dftactgrp(*no);

dcl-pi P3095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P2322.rpgleinc'
/copy 'qrpgleref/P782.rpgleinc'

dcl-ds theTable extname('T1067') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1067 LIMIT 1;

theCharVar = 'Hello from P3095';
dsply theCharVar;
callp localProc();
P770();
P2322();
P782();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3095 in the procedure';
end-proc;