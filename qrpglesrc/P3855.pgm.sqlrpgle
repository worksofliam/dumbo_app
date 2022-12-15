**free

ctl-opt dftactgrp(*no);

dcl-pi P3855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P765.rpgleinc'
/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P2786.rpgleinc'

dcl-ds T1302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1302 FROM T1302 LIMIT 1;

theCharVar = 'Hello from P3855';
dsply theCharVar;
callp localProc();
P765();
P655();
P2786();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3855 in the procedure';
end-proc;