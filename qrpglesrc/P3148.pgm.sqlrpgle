**free

ctl-opt dftactgrp(*no);

dcl-pi P3148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3144.rpgleinc'
/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P3107.rpgleinc'

dcl-ds T1017 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1017 FROM T1017 LIMIT 1;

theCharVar = 'Hello from P3148';
dsply theCharVar;
callp localProc();
P3144();
P980();
P3107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3148 in the procedure';
end-proc;