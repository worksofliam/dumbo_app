**free

ctl-opt dftactgrp(*no);

dcl-pi P1251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P880.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'

dcl-ds T996 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T996 FROM T996 LIMIT 1;

theCharVar = 'Hello from P1251';
dsply theCharVar;
callp localProc();
P222();
P880();
P631();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1251 in the procedure';
end-proc;