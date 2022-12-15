**free

ctl-opt dftactgrp(*no);

dcl-pi P1240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P859.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds T1686 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1686 FROM T1686 LIMIT 1;

theCharVar = 'Hello from P1240';
dsply theCharVar;
callp localProc();
P859();
P711();
P246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1240 in the procedure';
end-proc;