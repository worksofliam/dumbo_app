**free

ctl-opt dftactgrp(*no);

dcl-pi P865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P560.rpgleinc'

dcl-ds T329 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T329 FROM T329 LIMIT 1;

theCharVar = 'Hello from P865';
dsply theCharVar;
callp localProc();
P559();
P639();
P560();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P865 in the procedure';
end-proc;