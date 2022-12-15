**free

ctl-opt dftactgrp(*no);

dcl-pi P1512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P744.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds T538 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T538 FROM T538 LIMIT 1;

theCharVar = 'Hello from P1512';
dsply theCharVar;
callp localProc();
P744();
P84();
P361();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1512 in the procedure';
end-proc;