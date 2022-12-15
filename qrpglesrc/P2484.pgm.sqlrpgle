**free

ctl-opt dftactgrp(*no);

dcl-pi P2484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1327.rpgleinc'
/copy 'qrpgleref/P1847.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'

dcl-ds theTable extname('T314') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T314 LIMIT 1;

theCharVar = 'Hello from P2484';
dsply theCharVar;
callp localProc();
P1327();
P1847();
P817();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2484 in the procedure';
end-proc;