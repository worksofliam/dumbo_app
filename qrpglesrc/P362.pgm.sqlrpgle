**free

ctl-opt dftactgrp(*no);

dcl-pi P362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'

dcl-ds T180 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T180 FROM T180 LIMIT 1;

theCharVar = 'Hello from P362';
dsply theCharVar;
callp localProc();
P283();
P178();
P329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P362 in the procedure';
end-proc;