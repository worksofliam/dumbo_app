**free

ctl-opt dftactgrp(*no);

dcl-pi P1035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T331') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T331 LIMIT 1;

theCharVar = 'Hello from P1035';
dsply theCharVar;
callp localProc();
P864();
P77();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1035 in the procedure';
end-proc;