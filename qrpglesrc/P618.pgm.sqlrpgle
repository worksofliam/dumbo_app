**free

ctl-opt dftactgrp(*no);

dcl-pi P618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds T823 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T823 FROM T823 LIMIT 1;

theCharVar = 'Hello from P618';
dsply theCharVar;
callp localProc();
P232();
P337();
P250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P618 in the procedure';
end-proc;