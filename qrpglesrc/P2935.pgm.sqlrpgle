**free

ctl-opt dftactgrp(*no);

dcl-pi P2935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P1881.rpgleinc'
/copy 'qrpgleref/P1820.rpgleinc'

dcl-ds T1730 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1730 FROM T1730 LIMIT 1;

theCharVar = 'Hello from P2935';
dsply theCharVar;
P1697();
P1881();
P1820();
return;