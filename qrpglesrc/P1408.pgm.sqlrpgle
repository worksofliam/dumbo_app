**free

ctl-opt dftactgrp(*no);

dcl-pi P1408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'

dcl-ds T306 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T306 FROM T306 LIMIT 1;

theCharVar = 'Hello from P1408';
dsply theCharVar;
callp localProc();
P60();
P1051();
P677();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1408 in the procedure';
end-proc;