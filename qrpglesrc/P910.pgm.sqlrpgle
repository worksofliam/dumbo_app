**free

ctl-opt dftactgrp(*no);

dcl-pi P910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P728.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'

dcl-ds theTable extname('T310') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T310 LIMIT 1;

theCharVar = 'Hello from P910';
dsply theCharVar;
callp localProc();
P728();
P404();
P272();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P910 in the procedure';
end-proc;