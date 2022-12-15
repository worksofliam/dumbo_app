**free

ctl-opt dftactgrp(*no);

dcl-pi P274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds T376 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T376 FROM T376 LIMIT 1;

theCharVar = 'Hello from P274';
dsply theCharVar;
callp localProc();
P0();
P136();
P124();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P274 in the procedure';
end-proc;