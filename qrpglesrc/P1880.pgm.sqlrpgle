**free

ctl-opt dftactgrp(*no);

dcl-pi P1880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P968.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'

dcl-ds theTable extname('T515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T515 LIMIT 1;

theCharVar = 'Hello from P1880';
dsply theCharVar;
callp localProc();
P968();
P851();
P642();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1880 in the procedure';
end-proc;