**free

ctl-opt dftactgrp(*no);

dcl-pi P4656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1981.rpgleinc'
/copy 'qrpgleref/P4019.rpgleinc'
/copy 'qrpgleref/P4424.rpgleinc'

dcl-ds theTable extname('T980') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T980 LIMIT 1;

theCharVar = 'Hello from P4656';
dsply theCharVar;
callp localProc();
P1981();
P4019();
P4424();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4656 in the procedure';
end-proc;