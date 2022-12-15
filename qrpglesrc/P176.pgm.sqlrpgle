**free

ctl-opt dftactgrp(*no);

dcl-pi P176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds theTable extname('T134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T134 LIMIT 1;

theCharVar = 'Hello from P176';
dsply theCharVar;
callp localProc();
P87();
P132();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P176 in the procedure';
end-proc;