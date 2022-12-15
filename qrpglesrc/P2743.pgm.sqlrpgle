**free

ctl-opt dftactgrp(*no);

dcl-pi P2743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P468.rpgleinc'
/copy 'qrpgleref/P2256.rpgleinc'

dcl-ds T211 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T211 FROM T211 LIMIT 1;

theCharVar = 'Hello from P2743';
dsply theCharVar;
callp localProc();
P66();
P468();
P2256();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2743 in the procedure';
end-proc;