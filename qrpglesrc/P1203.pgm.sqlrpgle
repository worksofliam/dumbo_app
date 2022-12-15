**free

ctl-opt dftactgrp(*no);

dcl-pi P1203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'

dcl-ds theTable extname('T278') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T278 LIMIT 1;

theCharVar = 'Hello from P1203';
dsply theCharVar;
callp localProc();
P367();
P353();
P1155();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1203 in the procedure';
end-proc;