**free

ctl-opt dftactgrp(*no);

dcl-pi P5360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3512.rpgleinc'
/copy 'qrpgleref/P4232.rpgleinc'
/copy 'qrpgleref/P2812.rpgleinc'

dcl-ds T172 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T172 FROM T172 LIMIT 1;

theCharVar = 'Hello from P5360';
dsply theCharVar;
callp localProc();
P3512();
P4232();
P2812();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5360 in the procedure';
end-proc;