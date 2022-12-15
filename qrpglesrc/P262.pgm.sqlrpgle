**free

ctl-opt dftactgrp(*no);

dcl-pi P262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T123') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T123 LIMIT 1;

theCharVar = 'Hello from P262';
dsply theCharVar;
callp localProc();
P140();
P221();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P262 in the procedure';
end-proc;