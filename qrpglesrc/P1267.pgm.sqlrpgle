**free

ctl-opt dftactgrp(*no);

dcl-pi P1267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'

dcl-ds theTable extname('T495') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T495 LIMIT 1;

theCharVar = 'Hello from P1267';
dsply theCharVar;
callp localProc();
P635();
P235();
P459();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1267 in the procedure';
end-proc;