**free

ctl-opt dftactgrp(*no);

dcl-pi P391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'

dcl-ds T377 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T377 FROM T377 LIMIT 1;

theCharVar = 'Hello from P391';
dsply theCharVar;
callp localProc();
P40();
P97();
P160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P391 in the procedure';
end-proc;