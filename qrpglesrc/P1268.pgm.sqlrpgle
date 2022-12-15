**free

ctl-opt dftactgrp(*no);

dcl-pi P1268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1142.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P1200.rpgleinc'

dcl-ds T94 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T94 FROM T94 LIMIT 1;

theCharVar = 'Hello from P1268';
dsply theCharVar;
callp localProc();
P1142();
P617();
P1200();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1268 in the procedure';
end-proc;