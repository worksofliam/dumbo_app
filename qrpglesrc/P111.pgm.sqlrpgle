**free

ctl-opt dftactgrp(*no);

dcl-pi P111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P111';
dsply theCharVar;
callp localProc();
P67();
P90();
P31();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P111 in the procedure';
end-proc;