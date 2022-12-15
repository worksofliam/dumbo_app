**free

ctl-opt dftactgrp(*no);

dcl-pi P3451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P881.rpgleinc'
/copy 'qrpgleref/P3202.rpgleinc'
/copy 'qrpgleref/P2153.rpgleinc'

dcl-ds T620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T620 FROM T620 LIMIT 1;

theCharVar = 'Hello from P3451';
dsply theCharVar;
P881();
P3202();
P2153();
return;