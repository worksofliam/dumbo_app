**free

ctl-opt dftactgrp(*no);

dcl-pi P2377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1853.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P2081.rpgleinc'

dcl-ds theTable extname('T283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T283 LIMIT 1;

theCharVar = 'Hello from P2377';
dsply theCharVar;
callp localProc();
P1853();
P796();
P2081();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2377 in the procedure';
end-proc;