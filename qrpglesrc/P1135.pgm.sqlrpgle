**free

ctl-opt dftactgrp(*no);

dcl-pi P1135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'

dcl-ds theTable extname('T74') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T74 LIMIT 1;

theCharVar = 'Hello from P1135';
dsply theCharVar;
callp localProc();
P286();
P372();
P210();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1135 in the procedure';
end-proc;