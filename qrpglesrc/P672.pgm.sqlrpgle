**free

ctl-opt dftactgrp(*no);

dcl-pi P672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'

dcl-ds T445 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T445 FROM T445 LIMIT 1;

theCharVar = 'Hello from P672';
dsply theCharVar;
callp localProc();
P542();
P594();
P546();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P672 in the procedure';
end-proc;