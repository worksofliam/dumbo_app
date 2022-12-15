**free

ctl-opt dftactgrp(*no);

dcl-pi P1244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P1204.rpgleinc'

dcl-ds T254 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T254 FROM T254 LIMIT 1;

theCharVar = 'Hello from P1244';
dsply theCharVar;
callp localProc();
P223();
P1074();
P1204();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1244 in the procedure';
end-proc;