**free

ctl-opt dftactgrp(*no);

dcl-pi P1569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P999.rpgleinc'

dcl-ds T446 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T446 FROM T446 LIMIT 1;

theCharVar = 'Hello from P1569';
dsply theCharVar;
callp localProc();
P212();
P648();
P999();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1569 in the procedure';
end-proc;