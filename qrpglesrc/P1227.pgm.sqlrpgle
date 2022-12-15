**free

ctl-opt dftactgrp(*no);

dcl-pi P1227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P630.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds theTable extname('T302') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T302 LIMIT 1;

theCharVar = 'Hello from P1227';
dsply theCharVar;
callp localProc();
P630();
P336();
P392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1227 in the procedure';
end-proc;