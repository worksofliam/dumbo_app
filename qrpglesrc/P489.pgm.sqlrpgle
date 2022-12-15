**free

ctl-opt dftactgrp(*no);

dcl-pi P489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'

dcl-ds theTable extname('T80') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T80 LIMIT 1;

theCharVar = 'Hello from P489';
dsply theCharVar;
callp localProc();
P223();
P387();
P423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P489 in the procedure';
end-proc;