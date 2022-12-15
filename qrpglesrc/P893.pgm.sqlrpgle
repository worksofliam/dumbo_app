**free

ctl-opt dftactgrp(*no);

dcl-pi P893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'

dcl-ds T141 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T141 FROM T141 LIMIT 1;

theCharVar = 'Hello from P893';
dsply theCharVar;
callp localProc();
P287();
P128();
P832();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P893 in the procedure';
end-proc;