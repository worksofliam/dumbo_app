**free

ctl-opt dftactgrp(*no);

dcl-pi P4542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3235.rpgleinc'
/copy 'qrpgleref/P3392.rpgleinc'
/copy 'qrpgleref/P3642.rpgleinc'

dcl-ds theTable extname('T1104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1104 LIMIT 1;

theCharVar = 'Hello from P4542';
dsply theCharVar;
callp localProc();
P3235();
P3392();
P3642();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4542 in the procedure';
end-proc;