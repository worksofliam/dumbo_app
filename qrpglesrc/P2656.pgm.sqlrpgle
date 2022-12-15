**free

ctl-opt dftactgrp(*no);

dcl-pi P2656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1257.rpgleinc'
/copy 'qrpgleref/P1095.rpgleinc'
/copy 'qrpgleref/P2246.rpgleinc'

dcl-ds theTable extname('T539') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T539 LIMIT 1;

theCharVar = 'Hello from P2656';
dsply theCharVar;
callp localProc();
P1257();
P1095();
P2246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2656 in the procedure';
end-proc;