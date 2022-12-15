**free

ctl-opt dftactgrp(*no);

dcl-pi P1161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds T679 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T679 FROM T679 LIMIT 1;

theCharVar = 'Hello from P1161';
dsply theCharVar;
callp localProc();
P611();
P49();
P169();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1161 in the procedure';
end-proc;