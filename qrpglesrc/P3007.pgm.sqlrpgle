**free

ctl-opt dftactgrp(*no);

dcl-pi P3007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1234.rpgleinc'
/copy 'qrpgleref/P1582.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'

dcl-ds T1115 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1115 FROM T1115 LIMIT 1;

theCharVar = 'Hello from P3007';
dsply theCharVar;
callp localProc();
P1234();
P1582();
P1173();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3007 in the procedure';
end-proc;