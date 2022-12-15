**free

ctl-opt dftactgrp(*no);

dcl-pi P370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'

dcl-ds T53 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T53 FROM T53 LIMIT 1;

theCharVar = 'Hello from P370';
dsply theCharVar;
callp localProc();
P368();
P351();
P284();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P370 in the procedure';
end-proc;