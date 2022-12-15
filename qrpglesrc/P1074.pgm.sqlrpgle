**free

ctl-opt dftactgrp(*no);

dcl-pi P1074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P1072.rpgleinc'

dcl-ds T745 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T745 FROM T745 LIMIT 1;

theCharVar = 'Hello from P1074';
dsply theCharVar;
callp localProc();
P147();
P89();
P1072();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1074 in the procedure';
end-proc;