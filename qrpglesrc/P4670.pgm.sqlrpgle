**free

ctl-opt dftactgrp(*no);

dcl-pi P4670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3404.rpgleinc'
/copy 'qrpgleref/P2911.rpgleinc'
/copy 'qrpgleref/P1561.rpgleinc'

dcl-ds theTable extname('T1002') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1002 LIMIT 1;

theCharVar = 'Hello from P4670';
dsply theCharVar;
callp localProc();
P3404();
P2911();
P1561();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4670 in the procedure';
end-proc;