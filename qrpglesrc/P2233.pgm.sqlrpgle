**free

ctl-opt dftactgrp(*no);

dcl-pi P2233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1354.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'

dcl-ds T1203 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1203 FROM T1203 LIMIT 1;

theCharVar = 'Hello from P2233';
dsply theCharVar;
callp localProc();
P1354();
P686();
P937();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2233 in the procedure';
end-proc;