**free

ctl-opt dftactgrp(*no);

dcl-pi P4998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P4964.rpgleinc'
/copy 'qrpgleref/P3890.rpgleinc'

dcl-ds T355 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T355 FROM T355 LIMIT 1;

theCharVar = 'Hello from P4998';
dsply theCharVar;
callp localProc();
P400();
P4964();
P3890();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4998 in the procedure';
end-proc;