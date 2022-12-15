**free

ctl-opt dftactgrp(*no);

dcl-pi P497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds T10 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T10 FROM T10 LIMIT 1;

theCharVar = 'Hello from P497';
dsply theCharVar;
callp localProc();
P13();
P353();
P34();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P497 in the procedure';
end-proc;