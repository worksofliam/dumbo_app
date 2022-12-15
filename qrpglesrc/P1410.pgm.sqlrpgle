**free

ctl-opt dftactgrp(*no);

dcl-pi P1410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P830.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'

dcl-ds theTable extname('T292') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T292 LIMIT 1;

theCharVar = 'Hello from P1410';
dsply theCharVar;
callp localProc();
P830();
P670();
P496();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1410 in the procedure';
end-proc;