**free

ctl-opt dftactgrp(*no);

dcl-pi P4221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4079.rpgleinc'
/copy 'qrpgleref/P3594.rpgleinc'
/copy 'qrpgleref/P3563.rpgleinc'

dcl-ds theTable extname('T374') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T374 LIMIT 1;

theCharVar = 'Hello from P4221';
dsply theCharVar;
callp localProc();
P4079();
P3594();
P3563();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4221 in the procedure';
end-proc;