**free

ctl-opt dftactgrp(*no);

dcl-pi P460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds T401 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T401 FROM T401 LIMIT 1;

theCharVar = 'Hello from P460';
dsply theCharVar;
callp localProc();
P258();
P169();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P460 in the procedure';
end-proc;