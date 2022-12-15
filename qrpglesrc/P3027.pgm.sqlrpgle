**free

ctl-opt dftactgrp(*no);

dcl-pi P3027;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2426.rpgleinc'
/copy 'qrpgleref/P1721.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'

dcl-ds theTable extname('T3') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T3 LIMIT 1;

theCharVar = 'Hello from P3027';
dsply theCharVar;
callp localProc();
P2426();
P1721();
P77();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3027 in the procedure';
end-proc;