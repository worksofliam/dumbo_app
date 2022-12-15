**free

ctl-opt dftactgrp(*no);

dcl-pi P158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds T951 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T951 FROM T951 LIMIT 1;

theCharVar = 'Hello from P158';
dsply theCharVar;
callp localProc();
P113();
P141();
P95();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P158 in the procedure';
end-proc;