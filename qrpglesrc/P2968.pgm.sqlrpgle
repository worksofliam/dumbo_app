**free

ctl-opt dftactgrp(*no);

dcl-pi P2968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2814.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P1378.rpgleinc'

dcl-ds T707 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T707 FROM T707 LIMIT 1;

theCharVar = 'Hello from P2968';
dsply theCharVar;
callp localProc();
P2814();
P639();
P1378();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2968 in the procedure';
end-proc;