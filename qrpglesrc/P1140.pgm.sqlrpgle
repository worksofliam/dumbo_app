**free

ctl-opt dftactgrp(*no);

dcl-pi P1140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'

dcl-ds T265 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T265 FROM T265 LIMIT 1;

theCharVar = 'Hello from P1140';
dsply theCharVar;
callp localProc();
P354();
P697();
P868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1140 in the procedure';
end-proc;