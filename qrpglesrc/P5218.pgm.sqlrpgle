**free

ctl-opt dftactgrp(*no);

dcl-pi P5218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2382.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P1101.rpgleinc'

dcl-ds T310 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T310 FROM T310 LIMIT 1;

theCharVar = 'Hello from P5218';
dsply theCharVar;
P2382();
P591();
P1101();
return;