**free

ctl-opt dftactgrp(*no);

dcl-pi P284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds T332 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T332 FROM T332 LIMIT 1;

theCharVar = 'Hello from P284';
dsply theCharVar;
callp localProc();
P160();
P275();
P167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P284 in the procedure';
end-proc;