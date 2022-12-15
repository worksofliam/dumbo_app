**free

ctl-opt dftactgrp(*no);

dcl-pi P5441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3607.rpgleinc'
/copy 'qrpgleref/P1380.rpgleinc'
/copy 'qrpgleref/P4426.rpgleinc'

dcl-ds theTable extname('T1519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1519 LIMIT 1;

theCharVar = 'Hello from P5441';
dsply theCharVar;
callp localProc();
P3607();
P1380();
P4426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5441 in the procedure';
end-proc;