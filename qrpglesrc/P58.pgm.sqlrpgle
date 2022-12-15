**free

ctl-opt dftactgrp(*no);

dcl-pi P58;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T828') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T828 LIMIT 1;

theCharVar = 'Hello from P58';
dsply theCharVar;
callp localProc();
P48();
P23();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P58 in the procedure';
end-proc;