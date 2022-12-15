**free

ctl-opt dftactgrp(*no);

dcl-pi P676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'

dcl-ds theTable extname('T34') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T34 LIMIT 1;

theCharVar = 'Hello from P676';
dsply theCharVar;
callp localProc();
P57();
P28();
P670();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P676 in the procedure';
end-proc;