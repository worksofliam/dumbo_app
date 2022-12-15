**free

ctl-opt dftactgrp(*no);

dcl-pi P1290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P1287.rpgleinc'

dcl-ds T400 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T400 FROM T400 LIMIT 1;

theCharVar = 'Hello from P1290';
dsply theCharVar;
callp localProc();
P992();
P515();
P1287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1290 in the procedure';
end-proc;