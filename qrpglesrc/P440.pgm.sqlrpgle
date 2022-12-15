**free

ctl-opt dftactgrp(*no);

dcl-pi P440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds T168 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T168 FROM T168 LIMIT 1;

theCharVar = 'Hello from P440';
dsply theCharVar;
callp localProc();
P56();
P315();
P115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P440 in the procedure';
end-proc;