**free

ctl-opt dftactgrp(*no);

dcl-pi P1339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P715.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'
/copy 'qrpgleref/P745.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P1339';
dsply theCharVar;
callp localProc();
P715();
P883();
P745();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1339 in the procedure';
end-proc;