**free

ctl-opt dftactgrp(*no);

dcl-pi P3810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P1663.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds T1703 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1703 FROM T1703 LIMIT 1;

theCharVar = 'Hello from P3810';
dsply theCharVar;
P505();
P1663();
P753();
return;