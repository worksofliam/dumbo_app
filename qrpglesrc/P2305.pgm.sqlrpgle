**free

ctl-opt dftactgrp(*no);

dcl-pi P2305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1626.rpgleinc'
/copy 'qrpgleref/P1734.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds T1487 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1487 FROM T1487 LIMIT 1;

theCharVar = 'Hello from P2305';
dsply theCharVar;
P1626();
P1734();
P122();
return;