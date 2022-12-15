**free

ctl-opt dftactgrp(*no);

dcl-pi P3349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P846.rpgleinc'
/copy 'qrpgleref/P1082.rpgleinc'
/copy 'qrpgleref/P3094.rpgleinc'

dcl-ds theTable extname('T505') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T505 LIMIT 1;

theCharVar = 'Hello from P3349';
dsply theCharVar;
callp localProc();
P846();
P1082();
P3094();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3349 in the procedure';
end-proc;