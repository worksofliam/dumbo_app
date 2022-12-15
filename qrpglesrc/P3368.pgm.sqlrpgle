**free

ctl-opt dftactgrp(*no);

dcl-pi P3368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'
/copy 'qrpgleref/P1341.rpgleinc'

dcl-ds theTable extname('T563') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T563 LIMIT 1;

theCharVar = 'Hello from P3368';
dsply theCharVar;
callp localProc();
P875();
P1043();
P1341();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3368 in the procedure';
end-proc;