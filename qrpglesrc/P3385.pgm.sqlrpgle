**free

ctl-opt dftactgrp(*no);

dcl-pi P3385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P1421.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds T1055 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1055 FROM T1055 LIMIT 1;

theCharVar = 'Hello from P3385';
dsply theCharVar;
callp localProc();
P404();
P1421();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3385 in the procedure';
end-proc;