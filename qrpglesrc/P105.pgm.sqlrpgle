**free

ctl-opt dftactgrp(*no);

dcl-pi P105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'

dcl-ds T284 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T284 FROM T284 LIMIT 1;

theCharVar = 'Hello from P105';
dsply theCharVar;
callp localProc();
P16();
P44();
P104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P105 in the procedure';
end-proc;