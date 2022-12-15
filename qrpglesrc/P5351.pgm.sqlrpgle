**free

ctl-opt dftactgrp(*no);

dcl-pi P5351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2339.rpgleinc'
/copy 'qrpgleref/P5205.rpgleinc'
/copy 'qrpgleref/P2492.rpgleinc'

dcl-ds T306 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T306 FROM T306 LIMIT 1;

theCharVar = 'Hello from P5351';
dsply theCharVar;
callp localProc();
P2339();
P5205();
P2492();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5351 in the procedure';
end-proc;