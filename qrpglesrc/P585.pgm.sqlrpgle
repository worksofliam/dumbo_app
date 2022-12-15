**free

ctl-opt dftactgrp(*no);

dcl-pi P585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'

dcl-ds theTable extname('T567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T567 LIMIT 1;

theCharVar = 'Hello from P585';
dsply theCharVar;
callp localProc();
P22();
P556();
P208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P585 in the procedure';
end-proc;