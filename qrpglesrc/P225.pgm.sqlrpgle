**free

ctl-opt dftactgrp(*no);

dcl-pi P225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T416') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T416 LIMIT 1;

theCharVar = 'Hello from P225';
dsply theCharVar;
callp localProc();
P160();
P0();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P225 in the procedure';
end-proc;