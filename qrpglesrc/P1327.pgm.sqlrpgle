**free

ctl-opt dftactgrp(*no);

dcl-pi P1327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds T382 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T382 FROM T382 LIMIT 1;

theCharVar = 'Hello from P1327';
dsply theCharVar;
callp localProc();
P879();
P137();
P138();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1327 in the procedure';
end-proc;