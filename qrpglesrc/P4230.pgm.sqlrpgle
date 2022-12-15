**free

ctl-opt dftactgrp(*no);

dcl-pi P4230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P1602.rpgleinc'
/copy 'qrpgleref/P1941.rpgleinc'

dcl-ds theTable extname('T720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T720 LIMIT 1;

theCharVar = 'Hello from P4230';
dsply theCharVar;
callp localProc();
P705();
P1602();
P1941();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4230 in the procedure';
end-proc;