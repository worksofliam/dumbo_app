**free

ctl-opt dftactgrp(*no);

dcl-pi P3278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2553.rpgleinc'
/copy 'qrpgleref/P2480.rpgleinc'
/copy 'qrpgleref/P2334.rpgleinc'

dcl-ds T1376 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1376 FROM T1376 LIMIT 1;

theCharVar = 'Hello from P3278';
dsply theCharVar;
callp localProc();
P2553();
P2480();
P2334();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3278 in the procedure';
end-proc;