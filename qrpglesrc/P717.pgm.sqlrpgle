**free

ctl-opt dftactgrp(*no);

dcl-pi P717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'

dcl-ds T433 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T433 FROM T433 LIMIT 1;

theCharVar = 'Hello from P717';
dsply theCharVar;
callp localProc();
P613();
P687();
P335();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P717 in the procedure';
end-proc;