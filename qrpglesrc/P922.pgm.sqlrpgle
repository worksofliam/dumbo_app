**free

ctl-opt dftactgrp(*no);

dcl-pi P922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'

dcl-ds theTable extname('T519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T519 LIMIT 1;

theCharVar = 'Hello from P922';
dsply theCharVar;
callp localProc();
P269();
P461();
P643();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P922 in the procedure';
end-proc;