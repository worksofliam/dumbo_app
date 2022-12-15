**free

ctl-opt dftactgrp(*no);

dcl-pi P518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds T62 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T62 FROM T62 LIMIT 1;

theCharVar = 'Hello from P518';
dsply theCharVar;
callp localProc();
P142();
P155();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P518 in the procedure';
end-proc;