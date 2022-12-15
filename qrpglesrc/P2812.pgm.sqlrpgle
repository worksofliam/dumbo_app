**free

ctl-opt dftactgrp(*no);

dcl-pi P2812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2067.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'

dcl-ds T435 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T435 FROM T435 LIMIT 1;

theCharVar = 'Hello from P2812';
dsply theCharVar;
callp localProc();
P2067();
P894();
P1783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2812 in the procedure';
end-proc;