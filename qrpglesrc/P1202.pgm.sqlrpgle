**free

ctl-opt dftactgrp(*no);

dcl-pi P1202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P874.rpgleinc'

dcl-ds theTable extname('T359') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T359 LIMIT 1;

theCharVar = 'Hello from P1202';
dsply theCharVar;
callp localProc();
P135();
P241();
P874();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1202 in the procedure';
end-proc;