**free

ctl-opt dftactgrp(*no);

dcl-pi P998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P843.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds T1177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1177 FROM T1177 LIMIT 1;

theCharVar = 'Hello from P998';
dsply theCharVar;
callp localProc();
P843();
P762();
P294();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P998 in the procedure';
end-proc;