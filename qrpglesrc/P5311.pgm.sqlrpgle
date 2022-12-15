**free

ctl-opt dftactgrp(*no);

dcl-pi P5311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5166.rpgleinc'
/copy 'qrpgleref/P2307.rpgleinc'
/copy 'qrpgleref/P3738.rpgleinc'

dcl-ds T1267 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1267 FROM T1267 LIMIT 1;

theCharVar = 'Hello from P5311';
dsply theCharVar;
callp localProc();
P5166();
P2307();
P3738();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5311 in the procedure';
end-proc;