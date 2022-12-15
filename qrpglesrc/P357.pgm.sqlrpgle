**free

ctl-opt dftactgrp(*no);

dcl-pi P357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'

dcl-ds T57 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T57 FROM T57 LIMIT 1;

theCharVar = 'Hello from P357';
dsply theCharVar;
callp localProc();
P158();
P173();
P160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P357 in the procedure';
end-proc;