**free

ctl-opt dftactgrp(*no);

dcl-pi P3687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2727.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P3147.rpgleinc'

dcl-ds theTable extname('T1179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1179 LIMIT 1;

theCharVar = 'Hello from P3687';
dsply theCharVar;
callp localProc();
P2727();
P558();
P3147();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3687 in the procedure';
end-proc;