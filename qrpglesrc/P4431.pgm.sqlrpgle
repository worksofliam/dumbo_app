**free

ctl-opt dftactgrp(*no);

dcl-pi P4431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1689.rpgleinc'
/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P2523.rpgleinc'

dcl-ds T1456 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1456 FROM T1456 LIMIT 1;

theCharVar = 'Hello from P4431';
dsply theCharVar;
P1689();
P782();
P2523();
return;