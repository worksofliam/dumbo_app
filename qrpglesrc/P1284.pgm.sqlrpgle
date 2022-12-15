**free

ctl-opt dftactgrp(*no);

dcl-pi P1284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'

dcl-ds T327 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T327 FROM T327 LIMIT 1;

theCharVar = 'Hello from P1284';
dsply theCharVar;
callp localProc();
P24();
P89();
P1032();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1284 in the procedure';
end-proc;