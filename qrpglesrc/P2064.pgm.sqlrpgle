**free

ctl-opt dftactgrp(*no);

dcl-pi P2064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P788.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'

dcl-ds T1671 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1671 FROM T1671 LIMIT 1;

theCharVar = 'Hello from P2064';
dsply theCharVar;
P788();
P1120();
P1365();
return;