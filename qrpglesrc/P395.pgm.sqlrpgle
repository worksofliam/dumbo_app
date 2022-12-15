**free

ctl-opt dftactgrp(*no);

dcl-pi P395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds T700 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T700 FROM T700 LIMIT 1;

theCharVar = 'Hello from P395';
dsply theCharVar;
callp localProc();
P357();
P83();
P294();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P395 in the procedure';
end-proc;