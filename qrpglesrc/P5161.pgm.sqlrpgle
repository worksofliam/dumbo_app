**free

ctl-opt dftactgrp(*no);

dcl-pi P5161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4418.rpgleinc'
/copy 'qrpgleref/P4455.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'

dcl-ds theTable extname('T924') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T924 LIMIT 1;

theCharVar = 'Hello from P5161';
dsply theCharVar;
callp localProc();
P4418();
P4455();
P582();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5161 in the procedure';
end-proc;