**free

ctl-opt dftactgrp(*no);

dcl-pi P3735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P775.rpgleinc'

dcl-ds theTable extname('T1541') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1541 LIMIT 1;

theCharVar = 'Hello from P3735';
dsply theCharVar;
callp localProc();
P427();
P235();
P775();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3735 in the procedure';
end-proc;