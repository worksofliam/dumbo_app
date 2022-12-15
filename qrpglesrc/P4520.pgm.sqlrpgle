**free

ctl-opt dftactgrp(*no);

dcl-pi P4520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3838.rpgleinc'
/copy 'qrpgleref/P2238.rpgleinc'
/copy 'qrpgleref/P4368.rpgleinc'

dcl-ds theTable extname('T737') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T737 LIMIT 1;

theCharVar = 'Hello from P4520';
dsply theCharVar;
callp localProc();
P3838();
P2238();
P4368();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4520 in the procedure';
end-proc;