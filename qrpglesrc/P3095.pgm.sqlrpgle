**free

ctl-opt dftactgrp(*no);

dcl-pi P3095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2720.rpgleinc'
/copy 'qrpgleref/P1357.rpgleinc'
/copy 'qrpgleref/P2198.rpgleinc'

dcl-ds theTable extname('T839') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T839 LIMIT 1;

theCharVar = 'Hello from P3095';
dsply theCharVar;
callp localProc();
P2720();
P1357();
P2198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3095 in the procedure';
end-proc;