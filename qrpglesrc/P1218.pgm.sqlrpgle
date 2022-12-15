**free

ctl-opt dftactgrp(*no);

dcl-pi P1218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'

dcl-ds T186 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T186 FROM T186 LIMIT 1;

theCharVar = 'Hello from P1218';
dsply theCharVar;
callp localProc();
P1194();
P340();
P550();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1218 in the procedure';
end-proc;