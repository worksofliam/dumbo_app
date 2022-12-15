**free

ctl-opt dftactgrp(*no);

dcl-pi P628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds T371 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T371 FROM T371 LIMIT 1;

theCharVar = 'Hello from P628';
dsply theCharVar;
callp localProc();
P141();
P369();
P348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P628 in the procedure';
end-proc;