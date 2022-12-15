**free

ctl-opt dftactgrp(*no);

dcl-pi P1032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P715.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P1032';
dsply theCharVar;
callp localProc();
P727();
P602();
P715();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1032 in the procedure';
end-proc;