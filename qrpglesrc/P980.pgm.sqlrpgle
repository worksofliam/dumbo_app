**free

ctl-opt dftactgrp(*no);

dcl-pi P980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P980';
dsply theCharVar;
callp localProc();
P580();
P755();
P826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P980 in the procedure';
end-proc;