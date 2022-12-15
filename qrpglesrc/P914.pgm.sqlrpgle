**free

ctl-opt dftactgrp(*no);

dcl-pi P914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'

dcl-ds theTable extname('T315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T315 LIMIT 1;

theCharVar = 'Hello from P914';
dsply theCharVar;
callp localProc();
P346();
P223();
P147();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P914 in the procedure';
end-proc;