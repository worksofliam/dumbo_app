**free

ctl-opt dftactgrp(*no);

dcl-pi P3607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3260.rpgleinc'
/copy 'qrpgleref/P1890.rpgleinc'
/copy 'qrpgleref/P811.rpgleinc'

dcl-ds T129 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T129 FROM T129 LIMIT 1;

theCharVar = 'Hello from P3607';
dsply theCharVar;
callp localProc();
P3260();
P1890();
P811();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3607 in the procedure';
end-proc;