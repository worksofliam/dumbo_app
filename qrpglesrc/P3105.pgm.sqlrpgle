**free

ctl-opt dftactgrp(*no);

dcl-pi P3105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P1924.rpgleinc'
/copy 'qrpgleref/P2012.rpgleinc'

dcl-ds T1509 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1509 FROM T1509 LIMIT 1;

theCharVar = 'Hello from P3105';
dsply theCharVar;
callp localProc();
P308();
P1924();
P2012();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3105 in the procedure';
end-proc;