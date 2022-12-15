**free

ctl-opt dftactgrp(*no);

dcl-pi P3576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2627.rpgleinc'
/copy 'qrpgleref/P3327.rpgleinc'
/copy 'qrpgleref/P807.rpgleinc'

dcl-ds T798 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T798 FROM T798 LIMIT 1;

theCharVar = 'Hello from P3576';
dsply theCharVar;
callp localProc();
P2627();
P3327();
P807();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3576 in the procedure';
end-proc;