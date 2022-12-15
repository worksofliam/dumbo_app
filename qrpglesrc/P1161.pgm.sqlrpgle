**free

ctl-opt dftactgrp(*no);

dcl-pi P1161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'

dcl-ds T481 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T481 FROM T481 LIMIT 1;

theCharVar = 'Hello from P1161';
dsply theCharVar;
callp localProc();
P599();
P58();
P762();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1161 in the procedure';
end-proc;