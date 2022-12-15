**free

ctl-opt dftactgrp(*no);

dcl-pi P151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'

dcl-ds T198 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T198 FROM T198 LIMIT 1;

theCharVar = 'Hello from P151';
dsply theCharVar;
callp localProc();
P140();
P12();
P97();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P151 in the procedure';
end-proc;