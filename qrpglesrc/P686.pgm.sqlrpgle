**free

ctl-opt dftactgrp(*no);

dcl-pi P686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'

dcl-ds T17 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T17 FROM T17 LIMIT 1;

theCharVar = 'Hello from P686';
dsply theCharVar;
callp localProc();
P284();
P637();
P616();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P686 in the procedure';
end-proc;