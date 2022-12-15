**free

ctl-opt dftactgrp(*no);

dcl-pi P3261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P857.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'

dcl-ds theTable extname('T868') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T868 LIMIT 1;

theCharVar = 'Hello from P3261';
dsply theCharVar;
callp localProc();
P848();
P857();
P444();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3261 in the procedure';
end-proc;