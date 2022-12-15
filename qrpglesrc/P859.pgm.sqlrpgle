**free

ctl-opt dftactgrp(*no);

dcl-pi P859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P517.rpgleinc'

dcl-ds T46 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T46 FROM T46 LIMIT 1;

theCharVar = 'Hello from P859';
dsply theCharVar;
callp localProc();
P183();
P519();
P517();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P859 in the procedure';
end-proc;