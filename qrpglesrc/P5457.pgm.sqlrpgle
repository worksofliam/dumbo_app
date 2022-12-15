**free

ctl-opt dftactgrp(*no);

dcl-pi P5457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P5106.rpgleinc'
/copy 'qrpgleref/P2335.rpgleinc'

dcl-ds theTable extname('T639') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T639 LIMIT 1;

theCharVar = 'Hello from P5457';
dsply theCharVar;
callp localProc();
P504();
P5106();
P2335();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5457 in the procedure';
end-proc;