**free

ctl-opt dftactgrp(*no);

dcl-pi P1162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds T1148 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1148 FROM T1148 LIMIT 1;

theCharVar = 'Hello from P1162';
dsply theCharVar;
callp localProc();
P200();
P270();
P337();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1162 in the procedure';
end-proc;