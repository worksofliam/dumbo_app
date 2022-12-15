**free

ctl-opt dftactgrp(*no);

dcl-pi P572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T188') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T188 LIMIT 1;

theCharVar = 'Hello from P572';
dsply theCharVar;
callp localProc();
P357();
P444();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P572 in the procedure';
end-proc;