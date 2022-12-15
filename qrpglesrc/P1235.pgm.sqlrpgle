**free

ctl-opt dftactgrp(*no);

dcl-pi P1235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T580') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T580 LIMIT 1;

theCharVar = 'Hello from P1235';
dsply theCharVar;
callp localProc();
P96();
P487();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1235 in the procedure';
end-proc;