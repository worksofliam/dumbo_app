**free

ctl-opt dftactgrp(*no);

dcl-pi P3009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'
/copy 'qrpgleref/P2489.rpgleinc'

dcl-ds T233 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T233 FROM T233 LIMIT 1;

theCharVar = 'Hello from P3009';
dsply theCharVar;
callp localProc();
P561();
P1242();
P2489();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3009 in the procedure';
end-proc;