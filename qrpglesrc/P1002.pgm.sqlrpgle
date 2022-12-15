**free

ctl-opt dftactgrp(*no);

dcl-pi P1002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds T492 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T492 FROM T492 LIMIT 1;

theCharVar = 'Hello from P1002';
dsply theCharVar;
callp localProc();
P3();
P318();
P765();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1002 in the procedure';
end-proc;