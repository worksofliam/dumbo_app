**free

ctl-opt dftactgrp(*no);

dcl-pi P3184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1241.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P2957.rpgleinc'

dcl-ds theTable extname('T1445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1445 LIMIT 1;

theCharVar = 'Hello from P3184';
dsply theCharVar;
callp localProc();
P1241();
P311();
P2957();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3184 in the procedure';
end-proc;