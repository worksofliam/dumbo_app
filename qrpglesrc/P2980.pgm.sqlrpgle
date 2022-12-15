**free

ctl-opt dftactgrp(*no);

dcl-pi P2980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2858.rpgleinc'
/copy 'qrpgleref/P1140.rpgleinc'
/copy 'qrpgleref/P539.rpgleinc'

dcl-ds theTable extname('T719') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T719 LIMIT 1;

theCharVar = 'Hello from P2980';
dsply theCharVar;
callp localProc();
P2858();
P1140();
P539();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2980 in the procedure';
end-proc;