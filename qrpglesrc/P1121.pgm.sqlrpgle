**free

ctl-opt dftactgrp(*no);

dcl-pi P1121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'

dcl-ds theTable extname('T484') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T484 LIMIT 1;

theCharVar = 'Hello from P1121';
dsply theCharVar;
callp localProc();
P615();
P367();
P720();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1121 in the procedure';
end-proc;