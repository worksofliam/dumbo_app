**free

ctl-opt dftactgrp(*no);

dcl-pi P1237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'

dcl-ds T327 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T327 FROM T327 LIMIT 1;

theCharVar = 'Hello from P1237';
dsply theCharVar;
callp localProc();
P263();
P721();
P1019();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1237 in the procedure';
end-proc;