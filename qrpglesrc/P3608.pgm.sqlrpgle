**free

ctl-opt dftactgrp(*no);

dcl-pi P3608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3211.rpgleinc'
/copy 'qrpgleref/P1445.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds theTable extname('T648') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T648 LIMIT 1;

theCharVar = 'Hello from P3608';
dsply theCharVar;
callp localProc();
P3211();
P1445();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3608 in the procedure';
end-proc;