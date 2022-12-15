**free

ctl-opt dftactgrp(*no);

dcl-pi P86;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T943') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T943 LIMIT 1;

theCharVar = 'Hello from P86';
dsply theCharVar;
callp localProc();
P61();
P6();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P86 in the procedure';
end-proc;