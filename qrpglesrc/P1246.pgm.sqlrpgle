**free

ctl-opt dftactgrp(*no);

dcl-pi P1246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P1036.rpgleinc'
/copy 'qrpgleref/P1186.rpgleinc'

dcl-ds T711 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T711 FROM T711 LIMIT 1;

theCharVar = 'Hello from P1246';
dsply theCharVar;
callp localProc();
P513();
P1036();
P1186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1246 in the procedure';
end-proc;