**free

ctl-opt dftactgrp(*no);

dcl-pi P1302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds T769 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T769 FROM T769 LIMIT 1;

theCharVar = 'Hello from P1302';
dsply theCharVar;
callp localProc();
P893();
P144();
P652();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1302 in the procedure';
end-proc;