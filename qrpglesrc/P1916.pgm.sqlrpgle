**free

ctl-opt dftactgrp(*no);

dcl-pi P1916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P983.rpgleinc'
/copy 'qrpgleref/P1427.rpgleinc'
/copy 'qrpgleref/P800.rpgleinc'

dcl-ds T291 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T291 FROM T291 LIMIT 1;

theCharVar = 'Hello from P1916';
dsply theCharVar;
callp localProc();
P983();
P1427();
P800();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1916 in the procedure';
end-proc;