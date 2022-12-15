**free

ctl-opt dftactgrp(*no);

dcl-pi P3414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P958.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P3414';
dsply theCharVar;
callp localProc();
P65();
P958();
P841();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3414 in the procedure';
end-proc;