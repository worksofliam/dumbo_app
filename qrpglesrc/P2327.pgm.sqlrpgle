**free

ctl-opt dftactgrp(*no);

dcl-pi P2327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P2176.rpgleinc'
/copy 'qrpgleref/P2145.rpgleinc'

dcl-ds T126 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T126 FROM T126 LIMIT 1;

theCharVar = 'Hello from P2327';
dsply theCharVar;
callp localProc();
P561();
P2176();
P2145();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2327 in the procedure';
end-proc;