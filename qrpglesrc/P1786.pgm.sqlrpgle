**free

ctl-opt dftactgrp(*no);

dcl-pi P1786;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P792.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P1441.rpgleinc'

dcl-ds T306 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T306 FROM T306 LIMIT 1;

theCharVar = 'Hello from P1786';
dsply theCharVar;
callp localProc();
P792();
P4();
P1441();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1786 in the procedure';
end-proc;