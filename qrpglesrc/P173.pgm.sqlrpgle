**free

ctl-opt dftactgrp(*no);

dcl-pi P173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds theTable extname('T300') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T300 LIMIT 1;

theCharVar = 'Hello from P173';
dsply theCharVar;
callp localProc();
P158();
P73();
P140();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P173 in the procedure';
end-proc;