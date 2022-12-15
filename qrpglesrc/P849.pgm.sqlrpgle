**free

ctl-opt dftactgrp(*no);

dcl-pi P849;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P448.rpgleinc'
/copy 'qrpgleref/P539.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'

dcl-ds T50 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T50 FROM T50 LIMIT 1;

theCharVar = 'Hello from P849';
dsply theCharVar;
callp localProc();
P448();
P539();
P605();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P849 in the procedure';
end-proc;