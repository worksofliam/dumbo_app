**free

ctl-opt dftactgrp(*no);

dcl-pi P1418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P811.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds T132 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T132 FROM T132 LIMIT 1;

theCharVar = 'Hello from P1418';
dsply theCharVar;
callp localProc();
P136();
P811();
P365();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1418 in the procedure';
end-proc;