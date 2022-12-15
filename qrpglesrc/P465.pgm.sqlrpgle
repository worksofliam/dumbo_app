**free

ctl-opt dftactgrp(*no);

dcl-pi P465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds theTable extname('T333') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T333 LIMIT 1;

theCharVar = 'Hello from P465';
dsply theCharVar;
callp localProc();
P219();
P373();
P315();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P465 in the procedure';
end-proc;