**free

ctl-opt dftactgrp(*no);

dcl-pi P287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P287';
dsply theCharVar;
callp localProc();
P210();
P159();
P67();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P287 in the procedure';
end-proc;