**free

ctl-opt dftactgrp(*no);

dcl-pi P3602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1341.rpgleinc'
/copy 'qrpgleref/P3235.rpgleinc'
/copy 'qrpgleref/P3322.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P3602';
dsply theCharVar;
callp localProc();
P1341();
P3235();
P3322();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3602 in the procedure';
end-proc;