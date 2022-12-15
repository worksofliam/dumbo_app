**free

ctl-opt dftactgrp(*no);

dcl-pi P360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds theTable extname('T268') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T268 LIMIT 1;

theCharVar = 'Hello from P360';
dsply theCharVar;
callp localProc();
P208();
P273();
P141();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P360 in the procedure';
end-proc;