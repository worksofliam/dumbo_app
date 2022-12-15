**free

ctl-opt dftactgrp(*no);

dcl-pi P213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds theTable extname('T454') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T454 LIMIT 1;

theCharVar = 'Hello from P213';
dsply theCharVar;
callp localProc();
P121();
P130();
P89();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P213 in the procedure';
end-proc;