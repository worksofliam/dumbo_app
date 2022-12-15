**free

ctl-opt dftactgrp(*no);

dcl-pi P405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds T144 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T144 FROM T144 LIMIT 1;

theCharVar = 'Hello from P405';
dsply theCharVar;
callp localProc();
P97();
P287();
P277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P405 in the procedure';
end-proc;